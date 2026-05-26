#ifndef P2P_SHA256_H
#define P2P_SHA256_H

#include <stdint.h>
#include <stddef.h>

#define SHA256_DIGEST_SIZE 32
#define SHA256_BLOCK_SIZE  64

typedef struct {
    uint32_t state[8];
    uint64_t bitlen;
    uint32_t buflen;
    uint8_t  buf[SHA256_BLOCK_SIZE];
} sha256_ctx_t;

void sha256_init  (sha256_ctx_t *ctx);
void sha256_update(sha256_ctx_t *ctx, const void *data, size_t len);
void sha256_final (sha256_ctx_t *ctx, uint8_t out[SHA256_DIGEST_SIZE]);

void sha256_oneshot(const void *data, size_t len, uint8_t out[SHA256_DIGEST_SIZE]);

#endif
