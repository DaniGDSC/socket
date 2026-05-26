/*
 * peer — interactive P2P file-sharing client.
 *
 * Each peer simultaneously:
 *   - keeps a long-lived TCP session with the tracker
 *   - runs a TCP server that answers GET_HAVE / GET_CHUNK requests from
 *     other peers
 *   - presents a CLI (share / get / list / peers / mine / id / help / quit)
 *
 * When a download starts, the peer announces the file to the tracker
 * immediately with whatever chunks it already has — letting other peers
 * pull from it while it is still completing. WORKER_THREADS download
 * workers race over the missing chunks, picking peers round-robin.
 */

#include "common.h"
#include "protocol.h"
#include "net.h"
#include "chunk.h"

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <time.h>
#include <errno.h>
#include <getopt.h>
#include <ctype.h>
#include <stdint.h>

#define WORKER_THREADS 4

/* ============ shared (served) files ============ */

typedef struct shared_file {
    uint8_t   file_hash[HASH_SIZE];
    char      local_path[2048];
    char      filename[MAX_FILENAME + 1];
    uint64_t  file_size;
    uint32_t  chunk_size;
    uint32_t  chunk_count;
    uint8_t  *chunk_hashes;
    uint8_t  *bitfield;        /* which chunks we hold locally */
    struct shared_file *next;
} shared_file_t;

static pthread_mutex_t shared_lock = PTHREAD_MUTEX_INITIALIZER;
static shared_file_t  *shared_files = NULL;

/* ============ globals ============ */

static char     g_tracker_host[256] = "127.0.0.1";
static uint16_t g_tracker_port      = DEFAULT_TRACKER_PORT;
static uint16_t g_listen_port       = 0;
static char     g_data_dir[1024]    = ".";
static uint8_t  g_peer_id[PEER_ID_SIZE];
static char     g_peer_id_str[PEER_ID_SIZE * 2 + 1];
static int      g_tracker_fd        = -1;
static pthread_mutex_t g_tracker_lock = PTHREAD_MUTEX_INITIALIZER;
static volatile int    g_quit         = 0;

static shared_file_t *find_shared_locked(const uint8_t hash[HASH_SIZE]) {
    for (shared_file_t *f = shared_files; f; f = f->next)
        if (memcmp(f->file_hash, hash, HASH_SIZE) == 0) return f;
    return NULL;
}

/* ============ tracker RPCs (all run on the CLI thread) ============ */

static int ensure_tracker(void) {
    if (g_tracker_fd >= 0) return 0;
    g_tracker_fd = tcp_connect_str(g_tracker_host, g_tracker_port);
    if (g_tracker_fd < 0) { LOG_ERR("cannot connect to tracker %s:%u",
                                    g_tracker_host, g_tracker_port); return -1; }
    uint8_t req[PEER_ID_SIZE + 2], *w = req;
    buf_put_bytes(&w, g_peer_id, PEER_ID_SIZE);
    buf_put_u16  (&w, g_listen_port);
    if (msg_send(g_tracker_fd, MSG_REGISTER, req, (uint32_t)(w - req)) < 0) goto fail;
    uint8_t t; uint8_t *p = NULL; uint32_t l;
    if (msg_recv(g_tracker_fd, &t, &p, &l) < 0) goto fail;
    free(p);
    if (t != MSG_REGISTER_ACK) goto fail;
    return 0;
fail:
    if (g_tracker_fd >= 0) close(g_tracker_fd);
    g_tracker_fd = -1;
    return -1;
}

static int tracker_announce(const shared_file_t *f) {
    if (ensure_tracker() < 0) return -1;
    pthread_mutex_lock(&g_tracker_lock);
    size_t cap = HASH_SIZE + 2 + strlen(f->filename) + 8 + 4 + 4
               + (size_t)f->chunk_count * HASH_SIZE;
    uint8_t *buf = malloc(cap), *w = buf;
    buf_put_bytes(&w, f->file_hash, HASH_SIZE);
    uint16_t nl = (uint16_t)strlen(f->filename);
    buf_put_u16  (&w, nl);
    buf_put_bytes(&w, f->filename, nl);
    buf_put_u64  (&w, f->file_size);
    buf_put_u32  (&w, f->chunk_size);
    buf_put_u32  (&w, f->chunk_count);
    if (f->chunk_count > 0)
        buf_put_bytes(&w, f->chunk_hashes, (size_t)f->chunk_count * HASH_SIZE);
    int rc = msg_send(g_tracker_fd, MSG_ANNOUNCE, buf, (uint32_t)(w - buf));
    free(buf);
    if (rc < 0) {
        close(g_tracker_fd); g_tracker_fd = -1;
        pthread_mutex_unlock(&g_tracker_lock);
        return -1;
    }
    uint8_t t; uint8_t *p = NULL; uint32_t l;
    rc = msg_recv(g_tracker_fd, &t, &p, &l);
    free(p);
    pthread_mutex_unlock(&g_tracker_lock);
    return (rc < 0 || t != MSG_ANNOUNCE_ACK) ? -1 : 0;
}

typedef struct {
    uint8_t  file_hash[HASH_SIZE];
    char     filename[MAX_FILENAME + 1];
    uint64_t file_size;
    uint32_t chunk_size;
    uint32_t chunk_count;
    uint32_t peer_count;
} list_entry_t;

static int tracker_list(list_entry_t **out, uint32_t *out_n) {
    if (ensure_tracker() < 0) return -1;
    pthread_mutex_lock(&g_tracker_lock);
    int rc = msg_send(g_tracker_fd, MSG_LIST_FILES, NULL, 0);
    if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
                  pthread_mutex_unlock(&g_tracker_lock); return -1; }
    uint8_t t; uint8_t *payload = NULL; uint32_t plen;
    rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
    pthread_mutex_unlock(&g_tracker_lock);
    if (rc < 0 || t != MSG_LIST_FILES_RESP) { free(payload); return -1; }
    const uint8_t *p = payload, *end = payload + plen;
    uint32_t n;
    if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
    list_entry_t *arr = n ? calloc(n, sizeof *arr) : NULL;
    for (uint32_t i = 0; i < n; i++) {
        uint16_t nl;
        if (buf_get_bytes(&p, end, arr[i].file_hash, HASH_SIZE) < 0 ||
            buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
            buf_get_bytes(&p, end, arr[i].filename, nl) < 0 ||
            buf_get_u64  (&p, end, &arr[i].file_size) < 0 ||
            buf_get_u32  (&p, end, &arr[i].chunk_size) < 0 ||
            buf_get_u32  (&p, end, &arr[i].chunk_count) < 0 ||
            buf_get_u32  (&p, end, &arr[i].peer_count) < 0) {
            free(payload); free(arr); return -1;
        }
        arr[i].filename[nl] = '\0';
    }
    free(payload);
    *out = arr; *out_n = n;
    return 0;
}

typedef struct {
    uint8_t  file_hash[HASH_SIZE];
    char     filename[MAX_FILENAME + 1];
    uint64_t file_size;
    uint32_t chunk_size;
    uint32_t chunk_count;
    uint8_t *chunk_hashes;
} file_info_t;

static int tracker_get_file_info(const uint8_t fhash[HASH_SIZE], file_info_t *out) {
    if (ensure_tracker() < 0) return -1;
    pthread_mutex_lock(&g_tracker_lock);
    int rc = msg_send(g_tracker_fd, MSG_GET_FILE_INFO, fhash, HASH_SIZE);
    if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
                  pthread_mutex_unlock(&g_tracker_lock); return -1; }
    uint8_t t; uint8_t *payload = NULL; uint32_t plen;
    rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
    pthread_mutex_unlock(&g_tracker_lock);
    if (rc < 0 || t != MSG_GET_FILE_INFO_RESP) { free(payload); return -1; }
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t present;
    if (buf_get_u8(&p, end, &present) < 0 || !present) { free(payload); return -1; }
    uint16_t nl;
    if (buf_get_bytes(&p, end, out->file_hash, HASH_SIZE) < 0 ||
        buf_get_u16  (&p, end, &nl) < 0 || nl > MAX_FILENAME ||
        buf_get_bytes(&p, end, out->filename, nl) < 0 ||
        buf_get_u64  (&p, end, &out->file_size) < 0 ||
        buf_get_u32  (&p, end, &out->chunk_size) < 0 ||
        buf_get_u32  (&p, end, &out->chunk_count) < 0) {
        free(payload); return -1;
    }
    out->filename[nl] = '\0';
    out->chunk_hashes = NULL;
    if (out->chunk_count > 0) {
        out->chunk_hashes = malloc((size_t)out->chunk_count * HASH_SIZE);
        if (buf_get_bytes(&p, end, out->chunk_hashes,
                          (size_t)out->chunk_count * HASH_SIZE) < 0) {
            free(out->chunk_hashes); free(payload); return -1;
        }
    }
    free(payload);
    return 0;
}

typedef struct {
    uint8_t  peer_id[PEER_ID_SIZE];
    uint32_t ip;
    uint16_t port;
} peer_addr_t;

static int tracker_get_peers(const uint8_t fhash[HASH_SIZE],
                             peer_addr_t **out, uint32_t *out_n) {
    if (ensure_tracker() < 0) return -1;
    pthread_mutex_lock(&g_tracker_lock);
    int rc = msg_send(g_tracker_fd, MSG_GET_PEERS, fhash, HASH_SIZE);
    if (rc < 0) { close(g_tracker_fd); g_tracker_fd = -1;
                  pthread_mutex_unlock(&g_tracker_lock); return -1; }
    uint8_t t; uint8_t *payload = NULL; uint32_t plen;
    rc = msg_recv(g_tracker_fd, &t, &payload, &plen);
    pthread_mutex_unlock(&g_tracker_lock);
    if (rc < 0 || t != MSG_GET_PEERS_RESP) { free(payload); return -1; }
    const uint8_t *p = payload, *end = payload + plen;
    uint32_t n;
    if (buf_get_u32(&p, end, &n) < 0) { free(payload); return -1; }
    peer_addr_t *arr = n ? calloc(n, sizeof *arr) : NULL;
    for (uint32_t i = 0; i < n; i++) {
        if (buf_get_bytes(&p, end, arr[i].peer_id, PEER_ID_SIZE) < 0 ||
            buf_get_u32  (&p, end, &arr[i].ip) < 0 ||
            buf_get_u16  (&p, end, &arr[i].port) < 0) {
            free(arr); free(payload); return -1;
        }
    }
    free(payload);
    *out = arr; *out_n = n;
    return 0;
}

/* ============ inbound chunk server ============ */

static void serve_get_have(int fd, const uint8_t *payload, uint32_t plen) {
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t fhash[HASH_SIZE];
    if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) return;

    pthread_mutex_lock(&shared_lock);
    shared_file_t *f = find_shared_locked(fhash);
    uint32_t  bflen = f ? BITFIELD_BYTES(f->chunk_count) : 0;
    size_t    cap   = HASH_SIZE + 4 + bflen;
    uint8_t  *buf   = malloc(cap), *w = buf;
    buf_put_bytes(&w, fhash, HASH_SIZE);
    buf_put_u32  (&w, bflen);
    if (f && bflen) buf_put_bytes(&w, f->bitfield, bflen);
    pthread_mutex_unlock(&shared_lock);
    msg_send(fd, MSG_HAVE_CHUNKS, buf, (uint32_t)(w - buf));
    free(buf);
}

static void serve_get_chunk(int fd, const uint8_t *payload, uint32_t plen) {
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t fhash[HASH_SIZE]; uint32_t idx;
    if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0 ||
        buf_get_u32  (&p, end, &idx)            < 0) return;

    pthread_mutex_lock(&shared_lock);
    shared_file_t *f = find_shared_locked(fhash);
    if (!f || idx >= f->chunk_count || !BIT_TEST(f->bitfield, idx)) {
        pthread_mutex_unlock(&shared_lock);
        uint8_t nf[HASH_SIZE + 4]; uint8_t *w = nf;
        buf_put_bytes(&w, fhash, HASH_SIZE);
        buf_put_u32  (&w, idx);
        msg_send(fd, MSG_CHUNK_NOT_FOUND, nf, sizeof nf);
        return;
    }
    char     path[2048];      snprintf(path, sizeof path, "%s", f->local_path);
    uint64_t fsize  = f->file_size;
    uint32_t csize  = f->chunk_size;
    uint8_t  chash[HASH_SIZE];
    memcpy(chash, f->chunk_hashes + (size_t)idx * HASH_SIZE, HASH_SIZE);
    pthread_mutex_unlock(&shared_lock);

    uint8_t  *data = malloc(csize);
    uint32_t  dlen = 0;
    if (read_chunk(path, idx, csize, fsize, data, &dlen) < 0) {
        free(data);
        uint8_t nf[HASH_SIZE + 4]; uint8_t *w = nf;
        buf_put_bytes(&w, fhash, HASH_SIZE);
        buf_put_u32  (&w, idx);
        msg_send(fd, MSG_CHUNK_NOT_FOUND, nf, sizeof nf);
        return;
    }
    size_t cap = HASH_SIZE + 4 + HASH_SIZE + 4 + dlen;
    uint8_t *buf = malloc(cap), *w = buf;
    buf_put_bytes(&w, fhash, HASH_SIZE);
    buf_put_u32  (&w, idx);
    buf_put_bytes(&w, chash, HASH_SIZE);
    buf_put_u32  (&w, dlen);
    buf_put_bytes(&w, data, dlen);
    msg_send(fd, MSG_CHUNK_DATA, buf, (uint32_t)(w - buf));
    free(buf); free(data);
}

static void *server_client_thread(void *arg) {
    int fd = (int)(intptr_t)arg;
    while (1) {
        uint8_t  t;
        uint8_t *p = NULL;
        uint32_t l = 0;
        if (msg_recv(fd, &t, &p, &l) < 0) break;
        switch (t) {
            case MSG_GET_HAVE:  serve_get_have (fd, p, l); break;
            case MSG_GET_CHUNK: serve_get_chunk(fd, p, l); break;
            default: break;
        }
        free(p);
    }
    close(fd);
    return NULL;
}

static void *listener_thread(void *arg) {
    int srv = (int)(intptr_t)arg;
    while (!g_quit) {
        uint32_t ip; uint16_t port;
        int cfd = tcp_accept(srv, &ip, &port);
        if (cfd < 0) continue;
        pthread_t th;
        if (pthread_create(&th, NULL, server_client_thread,
                           (void *)(intptr_t)cfd) != 0) {
            close(cfd); continue;
        }
        pthread_detach(th);
    }
    return NULL;
}

/* ============ outbound chunk fetch ============ */

static int fetch_have(uint32_t ip, uint16_t port, const uint8_t fhash[HASH_SIZE],
                      uint8_t **out_bf, uint32_t *out_bf_len) {
    int fd = tcp_connect(ip, port);
    if (fd < 0) return -1;
    if (msg_send(fd, MSG_GET_HAVE, fhash, HASH_SIZE) < 0) { close(fd); return -1; }
    uint8_t t; uint8_t *p = NULL; uint32_t l;
    int rc = msg_recv(fd, &t, &p, &l);
    close(fd);
    if (rc < 0 || t != MSG_HAVE_CHUNKS) { free(p); return -1; }
    const uint8_t *q = p, *end = p + l;
    uint8_t got_hash[HASH_SIZE]; uint32_t bflen;
    if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
        memcmp(got_hash, fhash, HASH_SIZE) != 0 ||
        buf_get_u32(&q, end, &bflen) < 0 ||
        (size_t)(end - q) < bflen) { free(p); return -1; }
    uint8_t *bf = bflen ? malloc(bflen) : NULL;
    if (bflen) memcpy(bf, q, bflen);
    free(p);
    *out_bf = bf; *out_bf_len = bflen;
    return 0;
}

/* return codes: 0 ok, -1 transport, -2 not-found, -3 hash mismatch */
static int fetch_chunk(uint32_t ip, uint16_t port,
                       const uint8_t fhash[HASH_SIZE], uint32_t idx,
                       const uint8_t expected_hash[HASH_SIZE],
                       uint8_t *dst, uint32_t *out_len) {
    int fd = tcp_connect(ip, port);
    if (fd < 0) return -1;
    uint8_t req[HASH_SIZE + 4], *w = req;
    buf_put_bytes(&w, fhash, HASH_SIZE);
    buf_put_u32  (&w, idx);
    if (msg_send(fd, MSG_GET_CHUNK, req, sizeof req) < 0) { close(fd); return -1; }
    uint8_t t; uint8_t *p = NULL; uint32_t l;
    int rc = msg_recv(fd, &t, &p, &l);
    close(fd);
    if (rc < 0) { free(p); return -1; }
    if (t == MSG_CHUNK_NOT_FOUND) { free(p); return -2; }
    if (t != MSG_CHUNK_DATA)      { free(p); return -1; }
    const uint8_t *q = p, *end = p + l;
    uint8_t got_hash[HASH_SIZE]; uint32_t got_idx;
    uint8_t chash[HASH_SIZE]; uint32_t dlen;
    if (buf_get_bytes(&q, end, got_hash, HASH_SIZE) < 0 ||
        memcmp(got_hash, fhash, HASH_SIZE) != 0 ||
        buf_get_u32(&q, end, &got_idx) < 0 || got_idx != idx ||
        buf_get_bytes(&q, end, chash, HASH_SIZE) < 0 ||
        buf_get_u32(&q, end, &dlen) < 0 || (size_t)(end - q) < dlen) {
        free(p); return -1;
    }
    uint8_t actual[HASH_SIZE];
    hash_bytes(q, dlen, actual);
    if (memcmp(actual, expected_hash, HASH_SIZE) != 0) { free(p); return -3; }
    memcpy(dst, q, dlen);
    *out_len = dlen;
    free(p);
    return 0;
}

/* ============ download orchestration ============ */

typedef struct {
    uint8_t   peer_id[PEER_ID_SIZE];
    uint32_t  ip;
    uint16_t  port;
    uint8_t  *bitfield;
    uint32_t  bf_len;
    int       alive;
} dl_peer_t;

typedef struct {
    file_info_t      *info;
    uint8_t          *bitfield;     /* chunks we already hold */
    uint8_t          *failed;       /* chunks we have given up on */
    pthread_mutex_t   lock;
    uint32_t          remaining;
    int               out_fd;
    char              out_path[2048];
    dl_peer_t        *peers;
    uint32_t          n_peers;
    uint32_t          rr_cursor;
    uint32_t          fetched;      /* progress counter for logs */
} dl_ctx_t;

static int32_t pick_next_chunk_locked(dl_ctx_t *ctx) {
    if (ctx->info->chunk_count == 0) return -1;
    for (uint32_t i = 0; i < ctx->info->chunk_count; i++) {
        uint32_t idx = (ctx->rr_cursor + i) % ctx->info->chunk_count;
        if (!BIT_TEST(ctx->bitfield, idx) && !BIT_TEST(ctx->failed, idx)) {
            ctx->rr_cursor = (idx + 1) % ctx->info->chunk_count;
            return (int32_t)idx;
        }
    }
    return -1;
}

typedef struct { dl_ctx_t *ctx; int worker_id; } worker_arg_t;

static void *download_worker(void *arg) {
    worker_arg_t *wa = arg;
    dl_ctx_t     *ctx = wa->ctx;
    int           wid = wa->worker_id;
    free(wa);
    uint8_t *buf = malloc(ctx->info->chunk_size);

    while (1) {
        pthread_mutex_lock(&ctx->lock);
        int32_t idx = pick_next_chunk_locked(ctx);
        pthread_mutex_unlock(&ctx->lock);
        if (idx < 0) break;

        int success = 0;
        for (uint32_t pi = 0; pi < ctx->n_peers; pi++) {
            uint32_t pidx = (pi + (uint32_t)wid) % ctx->n_peers;
            dl_peer_t *pr = &ctx->peers[pidx];
            if (!pr->alive) continue;
            if (BITFIELD_BYTES((uint32_t)idx + 1) > pr->bf_len) continue;
            if (!BIT_TEST(pr->bitfield, (uint32_t)idx)) continue;
            uint32_t dlen = 0;
            int rc = fetch_chunk(pr->ip, pr->port, ctx->info->file_hash,
                                 (uint32_t)idx,
                                 ctx->info->chunk_hashes + (uint32_t)idx * HASH_SIZE,
                                 buf, &dlen);
            if (rc == 0) {
                if (write_chunk(ctx->out_fd, (uint32_t)idx,
                                ctx->info->chunk_size, buf, dlen) == 0) {
                    pthread_mutex_lock(&ctx->lock);
                    if (!BIT_TEST(ctx->bitfield, (uint32_t)idx)) {
                        BIT_SET(ctx->bitfield, (uint32_t)idx);
                        ctx->remaining--;
                        ctx->fetched++;
                    }
                    uint32_t got = ctx->fetched;
                    uint32_t tot = ctx->info->chunk_count;
                    pthread_mutex_unlock(&ctx->lock);
                    LOG_INFO("[w%d] chunk %u/%u from %s:%u (%u bytes)",
                             wid, got, tot, ip_to_str(pr->ip), pr->port, dlen);
                    success = 1;
                    break;
                }
            } else if (rc == -3) {
                LOG_WARN("[w%d] hash mismatch from %s:%u for chunk %u",
                         wid, ip_to_str(pr->ip), pr->port, (uint32_t)idx);
                continue;
            }
            /* rc == -1 or -2: try next peer */
        }
        if (!success) {
            pthread_mutex_lock(&ctx->lock);
            BIT_SET(ctx->failed, (uint32_t)idx);
            pthread_mutex_unlock(&ctx->lock);
            LOG_ERR("[w%d] no peer could serve chunk %u — giving up",
                    wid, (uint32_t)idx);
        }
    }
    free(buf);
    return NULL;
}

/* ============ commands ============ */

static void cmd_share(const char *path) {
    file_meta_t m;
    memset(&m, 0, sizeof m);
    if (hash_file(path, &m) < 0) {
        LOG_ERR("cannot hash '%s': %s", path, strerror(errno));
        return;
    }
    shared_file_t *sf = calloc(1, sizeof *sf);
    memcpy(sf->file_hash, m.file_hash, HASH_SIZE);
    snprintf(sf->local_path, sizeof sf->local_path, "%s", path);
    snprintf(sf->filename,   sizeof sf->filename,   "%s", m.filename);
    sf->file_size    = m.file_size;
    sf->chunk_size   = m.chunk_size;
    sf->chunk_count  = m.chunk_count;
    sf->chunk_hashes = m.chunk_hashes; m.chunk_hashes = NULL;
    uint32_t bfl = BITFIELD_BYTES(sf->chunk_count);
    sf->bitfield = bfl ? calloc(1, bfl) : NULL;
    for (uint32_t i = 0; i < sf->chunk_count; i++) BIT_SET(sf->bitfield, i);

    pthread_mutex_lock(&shared_lock);
    sf->next = shared_files; shared_files = sf;
    pthread_mutex_unlock(&shared_lock);

    if (tracker_announce(sf) < 0) {
        LOG_ERR("tracker announce failed");
        return;
    }
    char hex[HASH_SIZE * 2 + 1]; hash_to_hex(sf->file_hash, hex);
    printf("Shared '%s' (%llu bytes, %u chunks)\n",
           sf->filename, (unsigned long long)sf->file_size, sf->chunk_count);
    printf("  hash: %s\n", hex);
    file_meta_free(&m);
}

static void cmd_list(void) {
    list_entry_t *arr = NULL; uint32_t n = 0;
    if (tracker_list(&arr, &n) < 0) { LOG_ERR("tracker list failed"); return; }
    if (n == 0) { printf("(no files announced)\n"); free(arr); return; }
    printf("%-16s  %-28s  %12s  %7s  %5s\n",
           "HASH (short)", "NAME", "SIZE", "CHUNKS", "PEERS");
    for (uint32_t i = 0; i < n; i++) {
        char hex[HASH_SIZE * 2 + 1]; hash_to_hex(arr[i].file_hash, hex);
        char shortx[17]; memcpy(shortx, hex, 16); shortx[16] = '\0';
        printf("%-16s  %-28s  %12llu  %7u  %5u\n",
               shortx, arr[i].filename,
               (unsigned long long)arr[i].file_size,
               arr[i].chunk_count, arr[i].peer_count);
    }
    free(arr);
}

static void cmd_peers(const char *hex) {
    uint8_t fhash[HASH_SIZE];
    if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
    peer_addr_t *pa = NULL; uint32_t n = 0;
    if (tracker_get_peers(fhash, &pa, &n) < 0) { LOG_ERR("get peers failed"); return; }
    if (n == 0) { printf("(no peers)\n"); free(pa); return; }
    for (uint32_t i = 0; i < n; i++) {
        char pid[PEER_ID_SIZE * 2 + 1];
        for (int j = 0; j < PEER_ID_SIZE; j++)
            snprintf(pid + j * 2, 3, "%02x", pa[i].peer_id[j]);
        printf("  %s  %s:%u\n", pid, ip_to_str(pa[i].ip), pa[i].port);
    }
    free(pa);
}

static int verify_existing(int fd, const file_info_t *info,
                           uint8_t *bitfield, uint32_t *remaining) {
    if (info->chunk_count == 0) return 0;
    uint8_t *buf = malloc(info->chunk_size);
    int verified = 0;
    for (uint32_t i = 0; i < info->chunk_count; i++) {
        uint64_t off = (uint64_t)i * info->chunk_size;
        uint64_t want = info->chunk_size;
        if (off + want > info->file_size) want = info->file_size - off;
        uint32_t got = 0; int err = 0;
        while (got < want) {
            ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
            if (r <= 0) { err = 1; break; }
            got += (uint32_t)r;
        }
        if (err) break;
        uint8_t h[HASH_SIZE];
        hash_bytes(buf, got, h);
        if (memcmp(h, info->chunk_hashes + (size_t)i * HASH_SIZE, HASH_SIZE) == 0) {
            BIT_SET(bitfield, i);
            verified++;
            (*remaining)--;
        }
    }
    free(buf);
    return verified;
}

static shared_file_t *add_partial_to_shared(const file_info_t *info,
                                            const char *out_path,
                                            uint8_t *bitfield_owned) {
    shared_file_t *sf = calloc(1, sizeof *sf);
    memcpy(sf->file_hash, info->file_hash, HASH_SIZE);
    snprintf(sf->local_path, sizeof sf->local_path, "%s", out_path);
    snprintf(sf->filename,   sizeof sf->filename,   "%s", info->filename);
    sf->file_size    = info->file_size;
    sf->chunk_size   = info->chunk_size;
    sf->chunk_count  = info->chunk_count;
    sf->chunk_hashes = NULL;
    if (info->chunk_count > 0) {
        sf->chunk_hashes = malloc((size_t)info->chunk_count * HASH_SIZE);
        memcpy(sf->chunk_hashes, info->chunk_hashes,
               (size_t)info->chunk_count * HASH_SIZE);
    }
    sf->bitfield = bitfield_owned;  /* takes ownership */
    pthread_mutex_lock(&shared_lock);
    sf->next = shared_files; shared_files = sf;
    pthread_mutex_unlock(&shared_lock);
    return sf;
}

static void cmd_get(const char *hex, const char *out_opt) {
    uint8_t fhash[HASH_SIZE];
    if (hex_to_hash(hex, fhash) < 0) { printf("invalid hash\n"); return; }
    file_info_t info; memset(&info, 0, sizeof info);
    if (tracker_get_file_info(fhash, &info) < 0) {
        LOG_ERR("file not known to tracker"); return;
    }

    char out_path[2048];
    if (out_opt && *out_opt) snprintf(out_path, sizeof out_path, "%s", out_opt);
    else snprintf(out_path, sizeof out_path, "%s/%s", g_data_dir, info.filename);

    int out_fd = open(out_path, O_RDWR | O_CREAT, 0644);
    if (out_fd < 0) {
        LOG_ERR("open '%s': %s", out_path, strerror(errno));
        free(info.chunk_hashes); return;
    }
    if (ftruncate(out_fd, (off_t)info.file_size) < 0) {
        LOG_ERR("ftruncate '%s': %s", out_path, strerror(errno));
        close(out_fd); free(info.chunk_hashes); return;
    }

    uint32_t bfl       = info.chunk_count ? BITFIELD_BYTES(info.chunk_count) : 1;
    uint8_t *bitfield  = calloc(1, bfl);
    uint8_t *failed_bf = calloc(1, bfl);
    uint32_t remaining = info.chunk_count;
    int      verified  = verify_existing(out_fd, &info, bitfield, &remaining);
    if (verified > 0)
        LOG_INFO("resume: %d/%u chunks already valid on disk",
                 verified, info.chunk_count);

    /* register what we already have so other peers can already pull from us */
    shared_file_t *sf = add_partial_to_shared(&info, out_path, bitfield);
    if (verified > 0 || remaining == 0) tracker_announce(sf);

    if (remaining > 0) {
        peer_addr_t *pa = NULL; uint32_t np = 0;
        if (tracker_get_peers(fhash, &pa, &np) < 0 || np == 0) {
            LOG_ERR("no peers available");
            close(out_fd); free(info.chunk_hashes); free(failed_bf); free(pa);
            return;
        }
        dl_peer_t *peers = calloc(np, sizeof *peers);
        uint32_t kept = 0;
        for (uint32_t i = 0; i < np; i++) {
            if (memcmp(pa[i].peer_id, g_peer_id, PEER_ID_SIZE) == 0) continue;
            peers[kept].ip   = pa[i].ip;
            peers[kept].port = pa[i].port;
            memcpy(peers[kept].peer_id, pa[i].peer_id, PEER_ID_SIZE);
            if (fetch_have(peers[kept].ip, peers[kept].port, fhash,
                           &peers[kept].bitfield, &peers[kept].bf_len) == 0) {
                peers[kept].alive = 1;
                LOG_INFO("peer %s:%u online (bitfield %u bytes)",
                         ip_to_str(peers[kept].ip), peers[kept].port,
                         peers[kept].bf_len);
                kept++;
            } else {
                LOG_WARN("peer %s:%u not reachable", ip_to_str(peers[kept].ip),
                         peers[kept].port);
            }
        }
        free(pa);

        if (kept == 0) {
            LOG_ERR("no reachable peers");
            close(out_fd); free(info.chunk_hashes); free(failed_bf); free(peers);
            return;
        }

        dl_ctx_t ctx;
        memset(&ctx, 0, sizeof ctx);
        ctx.info      = &info;
        ctx.bitfield  = bitfield;
        ctx.failed    = failed_bf;
        ctx.remaining = remaining;
        ctx.out_fd    = out_fd;
        snprintf(ctx.out_path, sizeof ctx.out_path, "%s", out_path);
        ctx.peers     = peers;
        ctx.n_peers   = kept;
        pthread_mutex_init(&ctx.lock, NULL);

        struct timespec t0, t1;
        clock_gettime(CLOCK_MONOTONIC, &t0);
        printf("Downloading %u chunks from %u peer(s) using %d workers...\n",
               remaining, kept, WORKER_THREADS);

        pthread_t threads[WORKER_THREADS];
        for (int i = 0; i < WORKER_THREADS; i++) {
            worker_arg_t *wa = malloc(sizeof *wa);
            wa->ctx = &ctx; wa->worker_id = i;
            pthread_create(&threads[i], NULL, download_worker, wa);
        }
        for (int i = 0; i < WORKER_THREADS; i++) pthread_join(threads[i], NULL);

        clock_gettime(CLOCK_MONOTONIC, &t1);
        double sec = (double)(t1.tv_sec - t0.tv_sec)
                   + (double)(t1.tv_nsec - t0.tv_nsec) / 1e9;

        int complete = 1;
        for (uint32_t i = 0; i < info.chunk_count; i++)
            if (!BIT_TEST(bitfield, i)) { complete = 0; break; }

        if (complete) {
            double mb = (double)info.file_size / (1024.0 * 1024.0);
            printf("Download complete: '%s' (%llu B) in %.2fs (%.2f MB/s)\n",
                   out_path, (unsigned long long)info.file_size, sec,
                   sec > 0 ? mb / sec : 0.0);
            tracker_announce(sf);
        } else {
            printf("Download incomplete (some chunks could not be fetched)\n");
        }

        for (uint32_t i = 0; i < kept; i++) free(peers[i].bitfield);
        free(peers);
        pthread_mutex_destroy(&ctx.lock);
    } else {
        printf("Nothing to download — already have full file at '%s'\n", out_path);
    }

    close(out_fd);
    free(info.chunk_hashes);
    free(failed_bf);
}

static void cmd_mine(void) {
    pthread_mutex_lock(&shared_lock);
    if (!shared_files) {
        printf("(nothing shared)\n");
        pthread_mutex_unlock(&shared_lock); return;
    }
    for (shared_file_t *f = shared_files; f; f = f->next) {
        char hex[HASH_SIZE * 2 + 1]; hash_to_hex(f->file_hash, hex);
        uint32_t have = 0;
        for (uint32_t i = 0; i < f->chunk_count; i++)
            if (BIT_TEST(f->bitfield, i)) have++;
        printf("  %s  %-28s  %12llu B  %u/%u chunks  (%s)\n",
               hex, f->filename, (unsigned long long)f->file_size,
               have, f->chunk_count, f->local_path);
    }
    pthread_mutex_unlock(&shared_lock);
}

static void cmd_help(void) {
    printf(
        "Commands:\n"
        "  share <file>                Hash, register, and serve a local file\n"
        "  list                        Show all files known to the tracker\n"
        "  peers <hash>                List peers that have a given file\n"
        "  get   <hash> [--out PATH]   Download a file by hash (parallel + resume)\n"
        "  mine                        Show files we currently serve\n"
        "  id                          Print our peer id and listen port\n"
        "  help                        Show this help\n"
        "  quit                        Exit (also Ctrl-D)\n");
}

/* ============ main / CLI ============ */

static int parse_tracker(const char *s) {
    const char *colon = strchr(s, ':');
    if (!colon) {
        snprintf(g_tracker_host, sizeof g_tracker_host, "%s", s); return 0;
    }
    size_t n = (size_t)(colon - s);
    if (n >= sizeof g_tracker_host) return -1;
    memcpy(g_tracker_host, s, n); g_tracker_host[n] = '\0';
    g_tracker_port = (uint16_t)atoi(colon + 1);
    return 0;
}

static void generate_peer_id(const char *seed) {
    memset(g_peer_id, 0, PEER_ID_SIZE);
    if (seed && *seed) {
        size_t n = strlen(seed);
        if (n > PEER_ID_SIZE) n = PEER_ID_SIZE;
        memcpy(g_peer_id, seed, n);
    } else {
        FILE *f = fopen("/dev/urandom", "rb");
        if (f) {
            size_t got = fread(g_peer_id, 1, PEER_ID_SIZE, f);
            (void)got;
            fclose(f);
        } else {
            for (int i = 0; i < PEER_ID_SIZE; i++)
                g_peer_id[i] = (uint8_t)(rand() & 0xff);
        }
    }
    for (int i = 0; i < PEER_ID_SIZE; i++)
        snprintf(g_peer_id_str + i * 2, 3, "%02x", g_peer_id[i]);
}

static char *str_trim(char *s) {
    while (*s && isspace((unsigned char)*s)) s++;
    char *end = s + strlen(s);
    while (end > s && isspace((unsigned char)end[-1])) --end;
    *end = '\0';
    return s;
}

static int split_args(char *line, char **argv, int max) {
    int n = 0; char *p = line;
    while (*p && n < max) {
        while (*p && isspace((unsigned char)*p)) p++;
        if (!*p) break;
        argv[n++] = p;
        while (*p && !isspace((unsigned char)*p)) p++;
        if (*p) *p++ = '\0';
    }
    return n;
}

static void cli_loop(void) {
    char line[4096];
    int interactive = isatty(fileno(stdin));
    while (!g_quit) {
        if (interactive) { printf("p2p> "); fflush(stdout); }
        if (!fgets(line, sizeof line, stdin)) break;
        char *cmd = str_trim(line);
        if (!*cmd || cmd[0] == '#') continue;
        if (!interactive) fprintf(stderr, ">>> %s\n", cmd);

        char *argv[8]; int argc = split_args(cmd, argv, 8);
        if (argc == 0) continue;

        if      (strcmp(argv[0], "help")  == 0) cmd_help();
        else if (strcmp(argv[0], "share") == 0 && argc >= 2) cmd_share(argv[1]);
        else if (strcmp(argv[0], "list")  == 0) cmd_list();
        else if (strcmp(argv[0], "peers") == 0 && argc >= 2) cmd_peers(argv[1]);
        else if (strcmp(argv[0], "get")   == 0 && argc >= 2) {
            const char *out = NULL;
            for (int i = 2; i + 1 < argc; i++)
                if (strcmp(argv[i], "--out") == 0) { out = argv[i + 1]; break; }
            cmd_get(argv[1], out);
        }
        else if (strcmp(argv[0], "mine") == 0) cmd_mine();
        else if (strcmp(argv[0], "id")   == 0)
            printf("peer_id=%s listen_port=%u tracker=%s:%u\n",
                   g_peer_id_str, g_listen_port,
                   g_tracker_host, g_tracker_port);
        else if (strcmp(argv[0], "quit") == 0 || strcmp(argv[0], "exit") == 0) {
            g_quit = 1; break;
        }
        else printf("unknown command '%s' — type 'help'\n", argv[0]);
    }
}

int main(int argc, char **argv) {
    signal(SIGPIPE, SIG_IGN);
    setvbuf(stdout, NULL, _IOLBF, 0);
    setvbuf(stderr, NULL, _IOLBF, 0);
    srand((unsigned)time(NULL) ^ (unsigned)getpid());

    static struct option opts[] = {
        {"tracker", required_argument, 0, 't'},
        {"port",    required_argument, 0, 'p'},
        {"dir",     required_argument, 0, 'd'},
        {"id",      required_argument, 0, 'i'},
        {0, 0, 0, 0}
    };
    const char *id_seed = NULL;
    int c;
    while ((c = getopt_long(argc, argv, "t:p:d:i:", opts, NULL)) != -1) {
        switch (c) {
            case 't': parse_tracker(optarg); break;
            case 'p': g_listen_port = (uint16_t)atoi(optarg); break;
            case 'd': snprintf(g_data_dir, sizeof g_data_dir, "%s", optarg); break;
            case 'i': id_seed = optarg; break;
            default:
                fprintf(stderr,
                  "usage: %s [--tracker host:port] [--port N] [--dir D] [--id NAME]\n",
                  argv[0]);
                return 1;
        }
    }

    if (g_listen_port == 0) g_listen_port = (uint16_t)(7000 + (rand() % 1000));
    mkdir(g_data_dir, 0755);
    generate_peer_id(id_seed);

    int srv = tcp_listen(g_listen_port);
    if (srv < 0) {
        LOG_ERR("cannot listen on %u: %s", g_listen_port, strerror(errno));
        return 1;
    }
    LOG_INFO("peer %s on :%u, data dir '%s'",
             g_peer_id_str, g_listen_port, g_data_dir);
    pthread_t lt;
    pthread_create(&lt, NULL, listener_thread, (void *)(intptr_t)srv);
    pthread_detach(lt);

    if (ensure_tracker() == 0)
        LOG_INFO("registered with tracker %s:%u",
                 g_tracker_host, g_tracker_port);
    else
        LOG_WARN("could not register with tracker (will retry per command)");

    cli_loop();

    if (g_tracker_fd >= 0) {
        msg_send(g_tracker_fd, MSG_UNREGISTER, NULL, 0);
        close(g_tracker_fd);
    }
    return 0;
}
