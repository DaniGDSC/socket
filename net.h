#ifndef P2P_NET_H
#define P2P_NET_H

#include <stdint.h>

/*
 * net.h — thin convenience wrappers around the POSIX TCP socket API.
 *
 * The rest of the project never calls socket()/bind()/listen()/accept()/
 * connect() directly. Those primitives need three or four lines of
 * boilerplate each (struct sockaddr_in setup, htons() on the port,
 * setsockopt() for sane defaults, error-path cleanup that closes the
 * fd) and most callers want the same defaults every time:
 *
 *   - IPv4 only. Both peers and tracker advertise IPv4 ip:port pairs on
 *     the wire (see protocol.h MSG_GET_PEERS_RESP), so making the API
 *     IPv4-only avoids an asymmetry between the addressing scheme and
 *     the protocol. v6 support would mean widening that wire field.
 *
 *   - Listening sockets get SO_REUSEADDR so a restarted tracker /
 *     peer can re-bind to its port immediately instead of waiting out
 *     TIME_WAIT.
 *
 *   - Connected sockets (both accept()ed and connect()ed) get
 *     TCP_NODELAY. Our protocol is request/response over short-lived
 *     connections; Nagle's algorithm would add ~40 ms of latency to
 *     every chunk fetch for no throughput benefit on localhost.
 *
 *   - Every function returns -1 on failure with errno set, and frees
 *     the partially-constructed socket on the failure path. Callers
 *     never have to remember to close() a half-built fd.
 *
 * IP addresses cross these APIs as uint32_t in HOST byte order. The
 * conversion to/from network byte order happens inside the wrappers,
 * matching how the rest of the codebase stores addresses (see
 * peer_addr_t in peer.c and the peer_entry_t in tracker.c).
 */

/*
 * Open a TCP server socket bound to INADDR_ANY:port and start
 * listening with backlog 128.
 *
 *   port  : TCP port in host byte order.
 *   return: server fd on success, -1 on error (errno set; nothing
 *           leaked).
 */
int tcp_listen(uint16_t port);

/*
 * Block until an inbound connection arrives on a server fd produced
 * by tcp_listen(). The accepted client socket is set TCP_NODELAY.
 *
 *   srv      : server fd from tcp_listen().
 *   out_ip   : if non-NULL, receives the client's IPv4 address in
 *              HOST byte order.
 *   out_port : if non-NULL, receives the client's TCP port in HOST
 *              byte order.
 *   return   : connected client fd on success, -1 on error.
 *
 * Note: the *client* port returned here is the ephemeral source port
 * the client used for this connection — not the port the client is
 * listening on. The protocol carries the latter explicitly in
 * MSG_REGISTER.
 */
int tcp_accept(int srv, uint32_t *out_ip, uint16_t *out_port);

/*
 * Open an outbound TCP connection to an IPv4 host:port. The new
 * socket is set TCP_NODELAY.
 *
 *   ip    : destination IPv4 address in HOST byte order.
 *   port  : destination TCP port in HOST byte order.
 *   return: connected fd on success, -1 on error.
 */
int tcp_connect(uint32_t ip, uint16_t port);

/*
 * Like tcp_connect() but takes a hostname (or dotted-quad string)
 * which is resolved via getaddrinfo(). Returns the first address
 * that successfully connects.
 *
 * Used by peers to reach the tracker, since the tracker is supplied
 * on the command line as "host:port" and the host may be a name.
 *
 *   host  : hostname or numeric IPv4 string.
 *   port  : destination TCP port in HOST byte order.
 *   return: connected fd on success, -1 on resolution or connect
 *           failure (no partial fds leaked).
 */
int tcp_connect_str(const char *host, uint16_t port);

/*
 * Format an IPv4 address (HOST byte order) as a printable dotted-quad
 * string ("203.0.113.5").
 *
 * Returns a pointer to a thread-local buffer. Safe to use from any
 * thread, but the returned pointer becomes stale on the next call to
 * ip_to_str() on the SAME thread — so copy it (or use it directly in
 * a printf format string) before calling again.
 */
const char *ip_to_str(uint32_t ip);

#endif
