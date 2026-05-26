#ifndef P2P_PROTOCOL_H
#define P2P_PROTOCOL_H

#include <stdint.h>
#include <stddef.h>
#include "common.h"

/*
 * Wire format for every message:
 *
 *   [ 4-byte BE length ] [ 1-byte type ] [ payload ... ]
 *
 * `length` covers the type byte plus the payload, so `length == 1 + payload_len`.
 * All multi-byte integers in payloads are network byte order (big-endian).
 */

typedef enum {
    /* tracker <-> peer */
    MSG_REGISTER           = 0x01,
    MSG_REGISTER_ACK       = 0x02,
    MSG_ANNOUNCE           = 0x03,
    MSG_ANNOUNCE_ACK       = 0x04,
    MSG_LIST_FILES         = 0x05,
    MSG_LIST_FILES_RESP    = 0x06,
    MSG_GET_PEERS          = 0x07,
    MSG_GET_PEERS_RESP     = 0x08,
    MSG_GET_FILE_INFO      = 0x09,
    MSG_GET_FILE_INFO_RESP = 0x0A,
    MSG_UNREGISTER         = 0x0B,
    MSG_PING               = 0x0C,
    MSG_PONG               = 0x0D,

    /* peer <-> peer */
    MSG_GET_HAVE           = 0x20,
    MSG_HAVE_CHUNKS        = 0x21,
    MSG_GET_CHUNK          = 0x22,
    MSG_CHUNK_DATA         = 0x23,
    MSG_CHUNK_NOT_FOUND    = 0x24,

    MSG_ERROR              = 0xFF,
} msg_type_t;

/*
 * Framed message I/O. Returns 0 on success, -1 on EOF or error.
 * msg_recv() allocates *out_payload on success — caller frees with free().
 */
int  msg_send(int fd, uint8_t type, const void *payload, uint32_t payload_len);
int  msg_recv(int fd, uint8_t *out_type, uint8_t **out_payload, uint32_t *out_len);

/* big-endian buffer encode / decode */
void buf_put_u8 (uint8_t **p, uint8_t  v);
void buf_put_u16(uint8_t **p, uint16_t v);
void buf_put_u32(uint8_t **p, uint32_t v);
void buf_put_u64(uint8_t **p, uint64_t v);
void buf_put_bytes(uint8_t **p, const void *src, size_t n);

int  buf_get_u8 (const uint8_t **p, const uint8_t *end, uint8_t  *out);
int  buf_get_u16(const uint8_t **p, const uint8_t *end, uint16_t *out);
int  buf_get_u32(const uint8_t **p, const uint8_t *end, uint32_t *out);
int  buf_get_u64(const uint8_t **p, const uint8_t *end, uint64_t *out);
int  buf_get_bytes(const uint8_t **p, const uint8_t *end, void *dst, size_t n);

#endif
