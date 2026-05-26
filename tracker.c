/*
 * tracker — central peer-list / file-index server.
 *
 * Holds in memory:
 *   - a global peer table (peer_id -> ip:port)
 *   - a global file table (file_hash -> metadata + chunk-hash list + peers)
 *
 * Each TCP client gets its own thread. When the client disconnects, its
 * registration is purged from every file's peer list (TCP keepalive is the
 * liveness signal).
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
#include <stdint.h>

typedef struct peer_entry {
    uint8_t   peer_id[PEER_ID_SIZE];
    uint32_t  ip;
    uint16_t  port;
    struct peer_entry *next;
} peer_entry_t;

typedef struct file_entry {
    uint8_t        file_hash[HASH_SIZE];
    char           filename[MAX_FILENAME + 1];
    uint64_t       file_size;
    uint32_t       chunk_size;
    uint32_t       chunk_count;
    uint8_t       *chunk_hashes;        /* chunk_count * HASH_SIZE */
    peer_entry_t  *peers;               /* peers that announced this file */
    struct file_entry *next;
} file_entry_t;

static pthread_mutex_t lock  = PTHREAD_MUTEX_INITIALIZER;
static file_entry_t   *files = NULL;
static peer_entry_t   *peers = NULL;

static file_entry_t *find_file_locked(const uint8_t *hash) {
    for (file_entry_t *f = files; f; f = f->next)
        if (memcmp(f->file_hash, hash, HASH_SIZE) == 0) return f;
    return NULL;
}

static void add_peer_to_file_locked(file_entry_t *f, const uint8_t *pid,
                                    uint32_t ip, uint16_t port) {
    for (peer_entry_t *p = f->peers; p; p = p->next) {
        if (memcmp(p->peer_id, pid, PEER_ID_SIZE) == 0) {
            p->ip = ip; p->port = port; return;
        }
    }
    peer_entry_t *np = calloc(1, sizeof *np);
    memcpy(np->peer_id, pid, PEER_ID_SIZE);
    np->ip = ip; np->port = port;
    np->next = f->peers;
    f->peers = np;
}

static void remove_peer_everywhere_locked(const uint8_t *pid) {
    for (file_entry_t *f = files; f; f = f->next) {
        peer_entry_t **pp = &f->peers;
        while (*pp) {
            if (memcmp((*pp)->peer_id, pid, PEER_ID_SIZE) == 0) {
                peer_entry_t *dead = *pp;
                *pp = dead->next;
                free(dead);
            } else {
                pp = &(*pp)->next;
            }
        }
    }
    peer_entry_t **pp = &peers;
    while (*pp) {
        if (memcmp((*pp)->peer_id, pid, PEER_ID_SIZE) == 0) {
            peer_entry_t *d = *pp; *pp = d->next; free(d);
        } else {
            pp = &(*pp)->next;
        }
    }
}

typedef struct {
    int       fd;
    uint32_t  ip;
    uint16_t  port;
} client_ctx_t;

static void send_status(int fd, uint8_t type, uint8_t status) {
    msg_send(fd, type, &status, 1);
}

static void handle_register(int fd, const uint8_t *payload, uint32_t plen,
                            uint32_t client_ip,
                            uint8_t out_peer_id[PEER_ID_SIZE],
                            uint16_t *out_listen_port) {
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t  pid[PEER_ID_SIZE];
    uint16_t listen_port;
    if (buf_get_bytes(&p, end, pid, PEER_ID_SIZE) < 0 ||
        buf_get_u16  (&p, end, &listen_port)       < 0) {
        send_status(fd, MSG_REGISTER_ACK, 1); return;
    }
    pthread_mutex_lock(&lock);
    peer_entry_t *exist = NULL;
    for (peer_entry_t *pe = peers; pe; pe = pe->next)
        if (memcmp(pe->peer_id, pid, PEER_ID_SIZE) == 0) { exist = pe; break; }
    if (exist) {
        exist->ip = client_ip; exist->port = listen_port;
    } else {
        peer_entry_t *np = calloc(1, sizeof *np);
        memcpy(np->peer_id, pid, PEER_ID_SIZE);
        np->ip = client_ip; np->port = listen_port;
        np->next = peers; peers = np;
    }
    pthread_mutex_unlock(&lock);
    memcpy(out_peer_id, pid, PEER_ID_SIZE);
    *out_listen_port = listen_port;
    send_status(fd, MSG_REGISTER_ACK, 0);
    LOG_INFO("REGISTER %s:%u", ip_to_str(client_ip), listen_port);
}

static void handle_announce(int fd, const uint8_t *payload, uint32_t plen,
                            const uint8_t peer_id[PEER_ID_SIZE],
                            uint32_t client_ip, uint16_t client_port) {
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t  fhash[HASH_SIZE];
    uint16_t nlen;
    char     filename[MAX_FILENAME + 1] = {0};
    uint64_t fsize;
    uint32_t csize, ccnt;

    if (buf_get_bytes(&p, end, fhash, HASH_SIZE)         < 0 ||
        buf_get_u16  (&p, end, &nlen)                    < 0 || nlen > MAX_FILENAME ||
        buf_get_bytes(&p, end, filename, nlen)           < 0 ||
        buf_get_u64  (&p, end, &fsize)                   < 0 ||
        buf_get_u32  (&p, end, &csize)                   < 0 ||
        buf_get_u32  (&p, end, &ccnt)                    < 0) {
        send_status(fd, MSG_ANNOUNCE_ACK, 1); return;
    }
    filename[nlen] = '\0';
    if ((size_t)(end - p) < (size_t)ccnt * HASH_SIZE) {
        send_status(fd, MSG_ANNOUNCE_ACK, 1); return;
    }

    pthread_mutex_lock(&lock);
    file_entry_t *f = find_file_locked(fhash);
    if (!f) {
        f = calloc(1, sizeof *f);
        memcpy(f->file_hash, fhash, HASH_SIZE);
        snprintf(f->filename, sizeof f->filename, "%s", filename);
        f->file_size   = fsize;
        f->chunk_size  = csize;
        f->chunk_count = ccnt;
        if (ccnt > 0) {
            f->chunk_hashes = malloc((size_t)ccnt * HASH_SIZE);
            memcpy(f->chunk_hashes, p, (size_t)ccnt * HASH_SIZE);
        }
        f->next = files; files = f;
    }
    add_peer_to_file_locked(f, peer_id, client_ip, client_port);
    pthread_mutex_unlock(&lock);

    send_status(fd, MSG_ANNOUNCE_ACK, 0);

    char hex[HASH_SIZE * 2 + 1]; hash_to_hex(fhash, hex);
    LOG_INFO("ANNOUNCE %.16s… '%s' (%llu B, %u chunks) from %s:%u",
             hex, filename, (unsigned long long)fsize, ccnt,
             ip_to_str(client_ip), client_port);
}

static void handle_list_files(int fd) {
    pthread_mutex_lock(&lock);
    uint32_t count = 0;
    size_t   cap   = 4;
    for (file_entry_t *f = files; f; f = f->next) {
        count++;
        cap += HASH_SIZE + 2 + strlen(f->filename) + 8 + 4 + 4 + 4;
    }
    uint8_t *buf = malloc(cap), *w = buf;
    buf_put_u32(&w, count);
    for (file_entry_t *f = files; f; f = f->next) {
        buf_put_bytes(&w, f->file_hash, HASH_SIZE);
        uint16_t nl = (uint16_t)strlen(f->filename);
        buf_put_u16  (&w, nl);
        buf_put_bytes(&w, f->filename, nl);
        buf_put_u64  (&w, f->file_size);
        buf_put_u32  (&w, f->chunk_size);
        buf_put_u32  (&w, f->chunk_count);
        uint32_t pc = 0;
        for (peer_entry_t *p = f->peers; p; p = p->next) pc++;
        buf_put_u32  (&w, pc);
    }
    pthread_mutex_unlock(&lock);
    msg_send(fd, MSG_LIST_FILES_RESP, buf, (uint32_t)(w - buf));
    free(buf);
}

static void handle_get_peers(int fd, const uint8_t *payload, uint32_t plen) {
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t fhash[HASH_SIZE];
    if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) {
        uint32_t zero = 0;
        uint8_t  tmp[4]; uint8_t *w = tmp; buf_put_u32(&w, zero);
        msg_send(fd, MSG_GET_PEERS_RESP, tmp, 4); return;
    }
    pthread_mutex_lock(&lock);
    file_entry_t *f = find_file_locked(fhash);
    uint32_t pc = 0;
    if (f) for (peer_entry_t *pp = f->peers; pp; pp = pp->next) pc++;
    size_t cap = 4 + (size_t)pc * (PEER_ID_SIZE + 4 + 2);
    uint8_t *buf = malloc(cap), *w = buf;
    buf_put_u32(&w, pc);
    if (f) for (peer_entry_t *pp = f->peers; pp; pp = pp->next) {
        buf_put_bytes(&w, pp->peer_id, PEER_ID_SIZE);
        buf_put_u32  (&w, pp->ip);
        buf_put_u16  (&w, pp->port);
    }
    pthread_mutex_unlock(&lock);
    msg_send(fd, MSG_GET_PEERS_RESP, buf, (uint32_t)(w - buf));
    free(buf);
}

static void handle_get_file_info(int fd, const uint8_t *payload, uint32_t plen) {
    const uint8_t *p = payload, *end = payload + plen;
    uint8_t fhash[HASH_SIZE];
    if (buf_get_bytes(&p, end, fhash, HASH_SIZE) < 0) {
        uint8_t absent = 0;
        msg_send(fd, MSG_GET_FILE_INFO_RESP, &absent, 1); return;
    }
    pthread_mutex_lock(&lock);
    file_entry_t *f = find_file_locked(fhash);
    if (!f) {
        pthread_mutex_unlock(&lock);
        uint8_t absent = 0;
        msg_send(fd, MSG_GET_FILE_INFO_RESP, &absent, 1);
        return;
    }
    size_t cap = 1 + HASH_SIZE + 2 + strlen(f->filename) + 8 + 4 + 4
               + (size_t)f->chunk_count * HASH_SIZE;
    uint8_t *buf = malloc(cap), *w = buf;
    buf_put_u8   (&w, 1);
    buf_put_bytes(&w, f->file_hash, HASH_SIZE);
    uint16_t nl = (uint16_t)strlen(f->filename);
    buf_put_u16  (&w, nl);
    buf_put_bytes(&w, f->filename, nl);
    buf_put_u64  (&w, f->file_size);
    buf_put_u32  (&w, f->chunk_size);
    buf_put_u32  (&w, f->chunk_count);
    if (f->chunk_count > 0)
        buf_put_bytes(&w, f->chunk_hashes, (size_t)f->chunk_count * HASH_SIZE);
    pthread_mutex_unlock(&lock);
    msg_send(fd, MSG_GET_FILE_INFO_RESP, buf, (uint32_t)(w - buf));
    free(buf);
}

static void *client_thread(void *arg) {
    client_ctx_t *ctx = arg;
    int  fd = ctx->fd;
    uint8_t  peer_id[PEER_ID_SIZE] = {0};
    int      registered  = 0;
    uint16_t listen_port = 0;

    while (1) {
        uint8_t  type;
        uint8_t *payload = NULL;
        uint32_t plen    = 0;
        if (msg_recv(fd, &type, &payload, &plen) < 0) break;

        switch (type) {
            case MSG_REGISTER:
                handle_register(fd, payload, plen, ctx->ip, peer_id, &listen_port);
                registered = 1;
                break;
            case MSG_ANNOUNCE:
                if (registered)
                    handle_announce(fd, payload, plen, peer_id, ctx->ip, listen_port);
                else
                    send_status(fd, MSG_ANNOUNCE_ACK, 1);
                break;
            case MSG_LIST_FILES:    handle_list_files   (fd); break;
            case MSG_GET_PEERS:     handle_get_peers    (fd, payload, plen); break;
            case MSG_GET_FILE_INFO: handle_get_file_info(fd, payload, plen); break;
            case MSG_PING:          msg_send(fd, MSG_PONG, NULL, 0); break;
            case MSG_UNREGISTER:
                free(payload); goto done;
            default:
                LOG_WARN("unknown message type 0x%02x", type);
                break;
        }
        free(payload);
    }
done:
    if (registered) {
        pthread_mutex_lock(&lock);
        remove_peer_everywhere_locked(peer_id);
        pthread_mutex_unlock(&lock);
        LOG_INFO("DISCONNECT %s:%u", ip_to_str(ctx->ip), listen_port);
    }
    close(fd);
    free(ctx);
    return NULL;
}

int main(int argc, char **argv) {
    uint16_t port = DEFAULT_TRACKER_PORT;
    if (argc > 1) port = (uint16_t)atoi(argv[1]);

    signal(SIGPIPE, SIG_IGN);
    setvbuf(stderr, NULL, _IOLBF, 0);

    int srv = tcp_listen(port);
    if (srv < 0) { perror("listen"); return 1; }
    LOG_INFO("tracker listening on port %u", port);

    while (1) {
        uint32_t ip;
        uint16_t cport;
        int fd = tcp_accept(srv, &ip, &cport);
        if (fd < 0) continue;
        client_ctx_t *ctx = malloc(sizeof *ctx);
        ctx->fd = fd; ctx->ip = ip; ctx->port = cport;
        pthread_t th;
        if (pthread_create(&th, NULL, client_thread, ctx) != 0) {
            close(fd); free(ctx); continue;
        }
        pthread_detach(th);
    }
    return 0;
}
