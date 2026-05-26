#ifndef P2P_CHUNK_H
#define P2P_CHUNK_H

#include <stdint.h>
#include <stddef.h>
#include "common.h"

typedef struct {
    uint8_t   file_hash[HASH_SIZE];   /* SHA-256 of full file content */
    char      filename[MAX_FILENAME + 1];
    uint64_t  file_size;
    uint32_t  chunk_size;
    uint32_t  chunk_count;
    uint8_t  *chunk_hashes;           /* chunk_count * HASH_SIZE bytes */
} file_meta_t;

void hash_bytes(const void *data, size_t n, uint8_t out[HASH_SIZE]);
int  hash_file (const char *path, file_meta_t *out);
void file_meta_free(file_meta_t *m);

int  read_chunk(const char *path, uint32_t idx, uint32_t chunk_size,
                uint64_t file_size, uint8_t *buf, uint32_t *out_len);
int  write_chunk(int fd, uint32_t idx, uint32_t chunk_size,
                 const uint8_t *data, uint32_t data_len);

void hash_to_hex(const uint8_t hash[HASH_SIZE], char out[HASH_SIZE * 2 + 1]);
int  hex_to_hash(const char *hex, uint8_t hash[HASH_SIZE]);

#endif
