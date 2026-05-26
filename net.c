/*
 * net.c — implementation of the TCP helpers declared in net.h.
 *
 * Each function follows the same shape:
 *
 *   1. socket() — fail fast if the kernel cannot give us an fd.
 *   2. Set socket options that match how this fd will be used
 *      (SO_REUSEADDR for listeners, TCP_NODELAY for connected sockets).
 *   3. Perform the blocking call (bind+listen, accept, or connect).
 *   4. On any failure after step 1, close() the fd so the caller
 *      never inherits a half-built socket.
 *
 * Everything is synchronous / blocking. Concurrency is provided by the
 * caller spawning one thread per accepted client (see tracker.c and
 * peer.c listener_thread()).
 */

#include "net.h"

#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

/*
 * Bind to 0.0.0.0:port and start listening with a backlog of 128.
 * SO_REUSEADDR lets the process restart on the same port without
 * waiting out TIME_WAIT — important for the tracker, which always
 * uses a well-known port, and convenient for repeated test runs.
 */
int tcp_listen(uint16_t port) {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd < 0) return -1;

    int opt = 1;
    setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof opt);

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof addr);
    addr.sin_family      = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_ANY);   /* bind on every interface */
    addr.sin_port        = htons(port);         /* host -> network order */

    if (bind(fd, (struct sockaddr *)&addr, sizeof addr) < 0) { close(fd); return -1; }
    if (listen(fd, 128) < 0)                                  { close(fd); return -1; }
    return fd;
}

/*
 * Block on accept() and hand back the client fd plus the peer's
 * address in HOST byte order (for direct use in our protocol structs
 * and in ip_to_str()).
 *
 * TCP_NODELAY is enabled on the accepted socket because the protocol
 * is request/response with messages typically smaller than one MSS;
 * Nagle would buffer them for up to 40 ms hoping to coalesce.
 */
int tcp_accept(int srv, uint32_t *out_ip, uint16_t *out_port) {
    struct sockaddr_in addr;
    socklen_t alen = sizeof addr;
    int fd = accept(srv, (struct sockaddr *)&addr, &alen);
    if (fd < 0) return -1;

    if (out_ip)   *out_ip   = ntohl(addr.sin_addr.s_addr);
    if (out_port) *out_port = ntohs(addr.sin_port);

    int one = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
    return fd;
}

/*
 * Open a TCP connection to an IPv4 host:port supplied in HOST byte
 * order. Used when we already have a numeric IP (e.g. from the
 * tracker's GET_PEERS_RESP, which carries raw u32 IPv4 addresses).
 */
int tcp_connect(uint32_t ip, uint16_t port) {
    int fd = socket(AF_INET, SOCK_STREAM, 0);
    if (fd < 0) return -1;

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof addr);
    addr.sin_family      = AF_INET;
    addr.sin_addr.s_addr = htonl(ip);
    addr.sin_port        = htons(port);

    if (connect(fd, (struct sockaddr *)&addr, sizeof addr) < 0) {
        close(fd); return -1;
    }
    int one = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
    return fd;
}

/*
 * Hostname-aware connect. getaddrinfo() returns a linked list of
 * candidate addresses; we walk it and use the first one we can
 * successfully connect to. Restricted to AF_INET to keep the rest of
 * the codebase (which stores addresses as uint32_t) consistent.
 *
 * On any failure the candidate fd is closed before we move on, so no
 * descriptors are leaked even when several attempts fail in a row.
 */
int tcp_connect_str(const char *host, uint16_t port) {
    struct addrinfo hints, *res = NULL, *r;
    memset(&hints, 0, sizeof hints);
    hints.ai_family   = AF_INET;
    hints.ai_socktype = SOCK_STREAM;

    char portstr[16];
    snprintf(portstr, sizeof portstr, "%u", port);
    if (getaddrinfo(host, portstr, &hints, &res) != 0) return -1;

    int fd = -1;
    for (r = res; r; r = r->ai_next) {
        fd = socket(r->ai_family, r->ai_socktype, 0);
        if (fd < 0) continue;
        if (connect(fd, r->ai_addr, r->ai_addrlen) == 0) {
            int one = 1;
            setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &one, sizeof one);
            break;
        }
        close(fd); fd = -1;
    }
    freeaddrinfo(res);
    return fd;
}

/*
 * Render an IPv4 address (HOST byte order) as a dotted-quad string.
 *
 * The buffer is __thread, so each thread gets its own scratch area
 * and cross-thread concurrent calls don't race. Within a thread, the
 * buffer is overwritten on every call, so chained calls such as
 *     printf("%s -> %s\n", ip_to_str(a), ip_to_str(b));
 * are unsafe — one of the two arguments will be the wrong string.
 * Use one ip_to_str() call per format placeholder.
 */
const char *ip_to_str(uint32_t ip) {
    static __thread char buf[16];   /* "255.255.255.255\0" */
    uint32_t be = htonl(ip);
    inet_ntop(AF_INET, &be, buf, sizeof buf);
    return buf;
}
