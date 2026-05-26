#include "protocol.h"

#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <arpa/inet.h>

static int read_full(int fd, void *buf, size_t n) {
    uint8_t *p = buf;
    size_t got = 0;
    while (got < n) {
        ssize_t r = read(fd, p + got, n - got);
        if (r == 0) return -1;
        if (r < 0) { if (errno == EINTR) continue; return -1; }
        got += (size_t)r;
    }
    return 0;
}

static int write_full(int fd, const void *buf, size_t n) {
    const uint8_t *p = buf;
    size_t sent = 0;
    while (sent < n) {
        ssize_t r = write(fd, p + sent, n - sent);
        if (r < 0) { if (errno == EINTR) continue; return -1; }
        sent += (size_t)r;
    }
    return 0;
}

int msg_send(int fd, uint8_t type, const void *payload, uint32_t payload_len) {
    uint32_t total = 1u + payload_len;
    uint32_t be = htonl(total);
    if (write_full(fd, &be, 4) < 0) return -1;
    if (write_full(fd, &type, 1) < 0) return -1;
    if (payload_len && write_full(fd, payload, payload_len) < 0) return -1;
    return 0;
}

int msg_recv(int fd, uint8_t *out_type, uint8_t **out_payload, uint32_t *out_len) {
    uint32_t be;
    if (read_full(fd, &be, 4) < 0) return -1;
    uint32_t total = ntohl(be);
    if (total < 1 || total > MAX_MSG_SIZE) return -1;
    uint8_t t;
    if (read_full(fd, &t, 1) < 0) return -1;
    uint32_t plen = total - 1;
    uint8_t *p = NULL;
    if (plen) {
        p = malloc(plen);
        if (!p) return -1;
        if (read_full(fd, p, plen) < 0) { free(p); return -1; }
    }
    *out_type = t;
    *out_payload = p;
    *out_len = plen;
    return 0;
}

void buf_put_u8 (uint8_t **p, uint8_t v)  { (*p)[0] = v; *p += 1; }
void buf_put_u16(uint8_t **p, uint16_t v) {
    (*p)[0] = (uint8_t)(v >> 8); (*p)[1] = (uint8_t)v; *p += 2;
}
void buf_put_u32(uint8_t **p, uint32_t v) {
    (*p)[0] = (uint8_t)(v >> 24); (*p)[1] = (uint8_t)(v >> 16);
    (*p)[2] = (uint8_t)(v >> 8);  (*p)[3] = (uint8_t)v;
    *p += 4;
}
void buf_put_u64(uint8_t **p, uint64_t v) {
    for (int i = 0; i < 8; i++) (*p)[i] = (uint8_t)(v >> (56 - i * 8));
    *p += 8;
}
void buf_put_bytes(uint8_t **p, const void *src, size_t n) {
    memcpy(*p, src, n); *p += n;
}

int buf_get_u8(const uint8_t **p, const uint8_t *end, uint8_t *out) {
    if (end - *p < 1) return -1;
    *out = (*p)[0]; *p += 1; return 0;
}
int buf_get_u16(const uint8_t **p, const uint8_t *end, uint16_t *out) {
    if (end - *p < 2) return -1;
    *out = (uint16_t)((uint16_t)(*p)[0] << 8 | (*p)[1]);
    *p += 2; return 0;
}
int buf_get_u32(const uint8_t **p, const uint8_t *end, uint32_t *out) {
    if (end - *p < 4) return -1;
    *out = ((uint32_t)(*p)[0] << 24) | ((uint32_t)(*p)[1] << 16) |
           ((uint32_t)(*p)[2] <<  8) | ((uint32_t)(*p)[3]);
    *p += 4; return 0;
}
int buf_get_u64(const uint8_t **p, const uint8_t *end, uint64_t *out) {
    if (end - *p < 8) return -1;
    uint64_t v = 0;
    for (int i = 0; i < 8; i++) v = (v << 8) | (uint64_t)(*p)[i];
    *out = v; *p += 8; return 0;
}
int buf_get_bytes(const uint8_t **p, const uint8_t *end, void *dst, size_t n) {
    if ((size_t)(end - *p) < n) return -1;
    memcpy(dst, *p, n); *p += n; return 0;
}
