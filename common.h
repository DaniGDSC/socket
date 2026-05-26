#ifndef P2P_COMMON_H
#define P2P_COMMON_H

#include <stdint.h>
#include <stddef.h>
#include <stdio.h>

#define CHUNK_SIZE            (64 * 1024)
#define HASH_SIZE             32
#define PEER_ID_SIZE          16
#define MAX_FILENAME          255
#define DEFAULT_TRACKER_PORT  6881
#define MAX_MSG_SIZE          (32u * 1024u * 1024u)

#define LOG_INFO(fmt, ...)  fprintf(stderr, "[INFO] " fmt "\n", ##__VA_ARGS__)
#define LOG_WARN(fmt, ...)  fprintf(stderr, "[WARN] " fmt "\n", ##__VA_ARGS__)
#define LOG_ERR(fmt, ...)   fprintf(stderr, "[ERR ] " fmt "\n", ##__VA_ARGS__)

#define BITFIELD_BYTES(n)   (((n) + 7u) / 8u)
#define BIT_SET(bf, i)      ((bf)[(i)/8] |=  (uint8_t)(1u << ((i)%8)))
#define BIT_CLEAR(bf, i)    ((bf)[(i)/8] &= (uint8_t)~(1u << ((i)%8)))
#define BIT_TEST(bf, i)     (((bf)[(i)/8] >> ((i)%8)) & 1u)

#endif
