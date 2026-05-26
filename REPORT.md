# socket-p2p — technical report

A small peer-to-peer file-transfer system with a central tracker, written
in POSIX C. This report documents the protocol, the threading model, and
the design choices behind the implementation.

## 1. Architecture

Three roles:

* **Tracker** — a long-running TCP server that holds two in-memory tables
  protected by one mutex:
    * `peers`  : `peer_id → ip:port` (last reachable address).
    * `files`  : `file_hash → { name, size, chunk_size, chunk_count, chunk_hashes[],
                                 peer_ids }`.
  TCP sessions are the liveness signal — when a peer disconnects, the
  tracker drops it from every file's peer list. There is no
  ping/heartbeat protocol because the kernel's TCP keepalive (or RST on
  socket close) already conveys the information.

* **Peer** — a single process that:
    * holds one long-lived TCP session to the tracker (for control RPCs);
    * runs a TCP server accepting `GET_HAVE` / `GET_CHUNK` from other
      peers;
    * runs a CLI loop (`share`, `get`, `list`, `peers`, `mine`, `id`,
      `quit`);
    * runs N worker threads during a download.

* **File** — split into fixed-size chunks (default 64 KiB). Each chunk
  has a SHA-256 hash; the array of chunk hashes is the file's
  *manifest* and is the basis for integrity checking and resume.

```
  CLI thread           listener thread          worker thread × N (during get)
  ─────────────────    ────────────────────     ─────────────────────────────
  reads stdin          accept() loop            pick a chunk we still need
  drives tracker RPCs  spawn handler thread     pick a peer that has it
  starts downloads     ─ per-client thread:     fetch (verify SHA-256)
  joins workers          GET_HAVE → bitfield    write at byte offset idx·csize
                         GET_CHUNK → chunk data mark bit; release; repeat
```

A peer announces a file to the tracker **as soon as it begins
downloading it**, with a bitfield reflecting whatever chunks it already
holds (often zero). Other peers may immediately start pulling those
chunks. This gives BitTorrent-style swarming for free: in `demo.sh`,
peer **C** downloads from both A (a complete seeder) and B (a half-done
seeder) at the same time.

## 2. Wire protocol

Every message is framed:

```
+--------+--------+----------------+
| length |  type  |    payload     |
| 4 BE   | 1 byte | length-1 bytes |
+--------+--------+----------------+
```

`length` covers the type byte plus the payload, so it is `1 +
len(payload)`. All integers in payloads are big-endian. A central
`msg_send` / `msg_recv` pair in `protocol.c` handles framing, with a
hard cap of 32 MiB per message to bound memory.

### Message catalog

| type | name                   | payload                                                                                                                                                  | direction        |
| ---- | ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- |
| 0x01 | `REGISTER`             | peer_id\[16\] + listen_port\[2\]                                                                                                                         | peer → tracker   |
| 0x02 | `REGISTER_ACK`         | status\[1\]                                                                                                                                              | tracker → peer   |
| 0x03 | `ANNOUNCE`             | file_hash\[32\] + name_len\[2\] + name + size\[8\] + chunk_size\[4\] + chunk_count\[4\] + chunk_hashes\[chunk_count·32\]                                 | peer → tracker   |
| 0x04 | `ANNOUNCE_ACK`         | status\[1\]                                                                                                                                              | tracker → peer   |
| 0x05 | `LIST_FILES`           | (empty)                                                                                                                                                  | peer → tracker   |
| 0x06 | `LIST_FILES_RESP`      | n\[4\] then n × { file_hash\[32\] + name_len\[2\] + name + size\[8\] + chunk_size\[4\] + chunk_count\[4\] + peer_count\[4\] }                            | tracker → peer   |
| 0x07 | `GET_PEERS`            | file_hash\[32\]                                                                                                                                          | peer → tracker   |
| 0x08 | `GET_PEERS_RESP`       | n\[4\] then n × { peer_id\[16\] + ip\[4\] + port\[2\] }                                                                                                  | tracker → peer   |
| 0x09 | `GET_FILE_INFO`        | file_hash\[32\]                                                                                                                                          | peer → tracker   |
| 0x0A | `GET_FILE_INFO_RESP`   | present\[1\] = 0/1; if 1: same as one entry of `LIST_FILES_RESP` minus peer_count, plus chunk_hashes\[chunk_count·32\]                                   | tracker → peer   |
| 0x0B | `UNREGISTER`           | (empty)                                                                                                                                                  | peer → tracker   |
| 0x20 | `GET_HAVE`             | file_hash\[32\]                                                                                                                                          | peer → peer      |
| 0x21 | `HAVE_CHUNKS`          | file_hash\[32\] + bitfield_len\[4\] + bitfield                                                                                                            | peer → peer      |
| 0x22 | `GET_CHUNK`            | file_hash\[32\] + chunk_idx\[4\]                                                                                                                         | peer → peer      |
| 0x23 | `CHUNK_DATA`           | file_hash\[32\] + chunk_idx\[4\] + chunk_hash\[32\] + data_len\[4\] + data                                                                                | peer → peer      |
| 0x24 | `CHUNK_NOT_FOUND`      | file_hash\[32\] + chunk_idx\[4\]                                                                                                                         | peer → peer      |

The downloader is the source of truth for chunk hashes: it gets them
from the tracker via `GET_FILE_INFO`, and after that the `chunk_hash`
field in `CHUNK_DATA` is a convenience — it is checked against the
expected hash from the manifest before the data is accepted. A malicious
seeder cannot forge a chunk because the hash would mismatch.

The peer-to-peer half intentionally has no `HELLO` / `BYE`: one TCP
connection per request keeps the state machine trivial. Localhost-only
benchmarks show this is not a bottleneck (~210 MB/s in `demo.sh`);
adding connection pooling is a future optimisation, not a correctness
issue.

## 3. Download algorithm

When the user runs `get <hash>`:

1. `GET_FILE_INFO` to the tracker — yields `size`, `chunk_size`,
   `chunk_count` and the full chunk-hash manifest.
2. Open the output file with `O_CREAT | O_RDWR` and `ftruncate` it to
   the final size (sparse on Linux, allocation only happens on first
   write to a page).
3. **Resume check**: read each chunk-sized region, hash it, compare to
   the manifest. Set a bit in `bitfield[]` for each match. On a fresh
   download the file is all zeros and no bits match; on a resume,
   surviving chunks are skipped.
4. `ANNOUNCE` to the tracker — even if `bitfield` is empty, this lets
   future peers find us as soon as we start filling chunks.
5. `GET_PEERS` to the tracker — yields the address list.
6. For each peer, open a connection, send `GET_HAVE`, store its
   bitfield. Mark unreachable peers as dead.
7. Start `WORKER_THREADS` (default 4) download workers.

Each worker:

```
loop:
    lock; idx = pick_next_chunk(); unlock
    if idx < 0: exit
    for each peer (rotated by worker id):
        if peer alive and peer.bitfield[idx]:
            data = fetch_chunk(peer, idx)            # verifies SHA-256
            if ok:
                pwrite(file, idx * chunk_size, data) # outside the lock
                lock; bitfield[idx] = 1; remaining-- ; fetched++; unlock
                break
    else:
        lock; failed[idx] = 1; unlock
        log "no peer for chunk idx — giving up"
```

`pick_next_chunk` scans from a moving cursor so different workers tend
to pick different chunks; concurrent picks of the same chunk are
possible but benign (last write wins, redundant counter increment is
suppressed by `BIT_TEST` before update).

A separate `failed` bitfield prevents the workers from spinning forever
on a chunk no live peer can serve. If any chunk ends up in `failed`,
the download is reported incomplete.

## 4. Integrity & resume

Two SHA-256 chains protect the data:

* The **file hash** is the digest of the whole file, computed by the
  sharer and used as the address (`get <hash>`).
* The **chunk hashes** are the digests of each chunk individually,
  stored in the tracker's manifest.

Before a downloaded chunk is written, its hash is checked against the
manifest entry. Before a resumed file is downloaded, every existing
chunk-sized region of the on-disk file is hashed and compared. This is
why resume is a one-liner from the user's perspective: the second `get`
sees N chunks already valid and re-fetches only the rest. `resume_demo.sh`
demonstrates this — after truncating an 8 MiB file to half its size,
the next `get` reports `resume: 64/128 chunks already valid` and only
fetches the missing 64.

The chunk-hash check also stops a malicious or corrupted peer from
poisoning the file: a wrong hash produces `LOG_WARN("hash mismatch
from …")` and the worker moves on to the next peer.

## 5. Threading model & invariants

* The CLI thread is the only one that touches `g_tracker_fd`. The
  `g_tracker_lock` is more defensive than strictly necessary, but is
  cheap and removes a foot-gun if someone later adds a background
  thread that pings the tracker.
* `shared_files` is read by every inbound connection handler and
  written from the CLI thread. Always serialised by `shared_lock`. File
  I/O happens **after** the lock is released, so a slow `pread` does
  not block other handlers.
* Within a download, `ctx->lock` protects `bitfield`, `failed`,
  `remaining`, `fetched`, `rr_cursor`. The actual disk write
  (`pwrite` at a known offset) does not need the lock because no two
  workers target the same byte range concurrently (and even if they
  did, the data is identical because it passed the same hash check).
* `pwrite` is used in preference to `lseek`+`write` so the absence of a
  shared file offset is explicit and cannot be broken by an accidental
  `lseek` elsewhere.
* `SIGPIPE` is masked to `SIG_IGN`; broken connections return `EPIPE`
  from `write`, which `msg_send` reports as `-1` and the loop handles.

## 6. Performance notes

Localhost numbers (Ubuntu 24.04, single laptop):

```
4 MiB file, 64 chunks
  B (1 peer):  ~0.02 s,  ~210 MB/s
  C (2 peers): ~0.02 s,  ~210 MB/s

8 MiB file with resume:
  B (full):    ~0.02 s
  B (resume after truncate-to-half): 64 chunks already valid, 64 fetched
```

The dominant cost on localhost is per-chunk TCP setup. A future
revision can multiplex chunks over a single peer connection (BitTorrent
does this), at which point the disk and the hash function become the
bottleneck. Throughput could also be raised by:

* Pipelining `GET_CHUNK` requests on one socket (request queue per peer).
* Increasing the chunk size (trade resume granularity for fewer
  round-trips).
* Using `sendfile(2)` from the seeder side for zero-copy.

## 7. Limitations & non-goals

* **No encryption / no auth.** Anyone on the network can pretend to
  be a peer, list files, or feed bogus data. The chunk-hash check
  rejects bad data but not bad metadata; a malicious tracker could
  trivially lie. Adding TLS and signed manifests is mechanical but out
  of scope.
* **No NAT traversal.** Peers must be directly addressable. The
  protocol is fine for LAN/intranet use; WAN use would need a relay or
  hole-punch helper.
* **Single-tracker.** No tracker federation, no DHT. Easy single point
  of failure.
* **No partial-chunk progress.** The smallest unit is one chunk; a
  download that loses the connection mid-chunk re-fetches that chunk in
  full. With 64 KiB chunks the wasted bytes are bounded.
* **In-memory tracker.** The file index is not persisted. On restart
  the tracker starts empty and peers must re-announce on their next
  command.
* **Last-mile race.** Multiple workers can pick and fetch the same
  chunk near the end of a download if other chunks have already been
  claimed; the wasted bytes are bounded by `WORKER_THREADS - 1`
  chunks. Easy to fix with a third "in-flight" bitfield.

## 8. Reproducing the demos

```
make
make demo            # tracker + 3 peers, parallel multi-source download
make resume-demo     # interrupted download recovers with no wasted bytes
```

Both scripts print the SHA-256 of every peer's copy and confirm they
match the original.
