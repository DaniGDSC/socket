#include "chunk.h"
#include "sha256.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>

void hash_bytes(const void *data, size_t n, uint8_t out[HASH_SIZE]) {
    sha256_oneshot(data, n, out);
}

int hash_file(const char *path, file_meta_t *out) {
    int fd = open(path, O_RDONLY);
    if (fd < 0) return -1;
    struct stat st;
    if (fstat(fd, &st) < 0) { close(fd); return -1; }

    out->file_size   = (uint64_t)st.st_size;
    out->chunk_size  = CHUNK_SIZE;
    out->chunk_count = (uint32_t)((out->file_size + CHUNK_SIZE - 1) / CHUNK_SIZE);
    if (out->file_size == 0) out->chunk_count = 0;

    const char *bn = strrchr(path, '/');
    bn = bn ? bn + 1 : path;
    snprintf(out->filename, sizeof out->filename, "%s", bn);

    out->chunk_hashes = NULL;
    if (out->chunk_count > 0) {
        out->chunk_hashes = calloc(out->chunk_count, HASH_SIZE);
        if (!out->chunk_hashes) { close(fd); return -1; }
    }

    sha256_ctx_t file_ctx;
    sha256_init(&file_ctx);

    uint8_t *buf = malloc(CHUNK_SIZE);
    if (!buf) {
        free(out->chunk_hashes); out->chunk_hashes = NULL;
        close(fd); return -1;
    }

    for (uint32_t i = 0; i < out->chunk_count; i++) {
        uint64_t remain = out->file_size - (uint64_t)i * CHUNK_SIZE;
        uint32_t want   = (remain < CHUNK_SIZE) ? (uint32_t)remain : CHUNK_SIZE;
        uint32_t got    = 0;
        while (got < want) {
            ssize_t r = read(fd, buf + got, want - got);
            if (r <= 0) {
                free(buf);
                free(out->chunk_hashes); out->chunk_hashes = NULL;
                close(fd); return -1;
            }
            got += (uint32_t)r;
        }
        sha256_oneshot(buf, got, out->chunk_hashes + (size_t)i * HASH_SIZE);
        sha256_update(&file_ctx, buf, got);
    }
    sha256_final(&file_ctx, out->file_hash);
    free(buf);
    close(fd);
    return 0;
}

void file_meta_free(file_meta_t *m) {
    if (!m) return;
    free(m->chunk_hashes);
    m->chunk_hashes = NULL;
}

int read_chunk(const char *path, uint32_t idx, uint32_t chunk_size,
               uint64_t file_size, uint8_t *buf, uint32_t *out_len) {
    int fd = open(path, O_RDONLY);
    if (fd < 0) return -1;
    uint64_t off = (uint64_t)idx * chunk_size;
    if (off >= file_size) { close(fd); return -1; }
    uint64_t remain = file_size - off;
    uint32_t want = (remain < chunk_size) ? (uint32_t)remain : chunk_size;
    uint32_t got = 0;
    while (got < want) {
        ssize_t r = pread(fd, buf + got, want - got, (off_t)(off + got));
        if (r <= 0) { close(fd); return -1; }
        got += (uint32_t)r;
    }
    *out_len = got;
    close(fd);
    return 0;
}

int write_chunk(int fd, uint32_t idx, uint32_t chunk_size,
                const uint8_t *data, uint32_t data_len) {
    uint64_t off = (uint64_t)idx * chunk_size;
    uint32_t sent = 0;
    while (sent < data_len) {
        ssize_t w = pwrite(fd, data + sent, data_len - sent, (off_t)(off + sent));
        if (w <= 0) return -1;
        sent += (uint32_t)w;
    }
    return 0;
}

void hash_to_hex(const uint8_t hash[HASH_SIZE], char out[HASH_SIZE * 2 + 1]) {
    static const char hexd[] = "0123456789abcdef";
    for (int i = 0; i < HASH_SIZE; i++) {
        out[i * 2]     = hexd[hash[i] >> 4];
        out[i * 2 + 1] = hexd[hash[i] & 0x0f];
    }
    out[HASH_SIZE * 2] = '\0';
}

int hex_to_hash(const char *hex, uint8_t hash[HASH_SIZE]) {
    if (!hex || strlen(hex) < HASH_SIZE * 2) return -1;
    for (int i = 0; i < HASH_SIZE; i++) {
        int hi = -1, lo = -1;
        char c = hex[i * 2];
        if (c >= '0' && c <= '9') hi = c - '0';
        else if (c >= 'a' && c <= 'f') hi = c - 'a' + 10;
        else if (c >= 'A' && c <= 'F') hi = c - 'A' + 10;
        c = hex[i * 2 + 1];
        if (c >= '0' && c <= '9') lo = c - '0';
        else if (c >= 'a' && c <= 'f') lo = c - 'a' + 10;
        else if (c >= 'A' && c <= 'F') lo = c - 'A' + 10;
        if (hi < 0 || lo < 0) return -1;
        hash[i] = (uint8_t)((hi << 4) | lo);
    }
    return 0;
}
