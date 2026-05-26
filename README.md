# socket-p2p — minimal P2P file sharing in C

A lightweight peer-to-peer file transfer system with a central tracker.
Files are split into 64 KiB chunks; clients download chunks in parallel
from multiple peers, verifying each chunk against a SHA-256 hash carried
in the file manifest.

  * Tracker server (TCP) — maintains the peer roster and the file index.
  * Peer client — registers, announces files it has, downloads files it
    wants, and serves chunks to other peers concurrently.
  * Length-prefixed binary protocol.
  * Per-chunk SHA-256 verification and on-disk resume of interrupted
    downloads.
  * Pure C, POSIX sockets, pthreads. No third-party libraries.

```
                      ┌──────────┐
                      │ tracker  │  (peer roster, file index)
                      └────┬─────┘
                  REGISTER │ ANNOUNCE / GET_FILE_INFO / GET_PEERS
              ┌────────────┼────────────┐
              ▼            ▼            ▼
          ┌──────┐     ┌──────┐     ┌──────┐
          │ peer │◄───►│ peer │◄───►│ peer │
          └──────┘     └──────┘     └──────┘
                 GET_HAVE / GET_CHUNK
```

## Build

Requires only a POSIX C compiler with pthreads. Tested on Ubuntu 24.04 / gcc 13.

```
make
```

This produces `tracker` and `peer`.

## Run

Start the tracker (default port `6881`):

```
./tracker 6881
```

Start a peer (interactive REPL):

```
./peer --tracker 127.0.0.1:6881 --port 7001 --dir ./alice --id alice
```

Options:

| flag | meaning |
| ---- | ------- |
| `--tracker host:port` | tracker address (default `127.0.0.1:6881`) |
| `--port N`            | this peer's TCP listen port (default random ≥ 7000) |
| `--dir D`             | directory where downloaded files are written |
| `--id NAME`           | short, stable peer-id (otherwise random 16 bytes) |

Available commands at the prompt:

| command                  | effect |
| ------------------------ | ------ |
| `share <path>`           | hash a local file and announce it to the tracker |
| `list`                   | print all files currently known to the tracker |
| `peers <hash>`           | list peers that have a given file |
| `get <hash> [--out P]`   | download a file by hash (parallel + resumable) |
| `mine`                   | print the files we are serving |
| `id`                     | print our peer-id, port, tracker address |
| `help` / `quit`          | obvious |

`<hash>` is the 64-character SHA-256 hex string printed by `share` and
shown (truncated) by `list`.

## Quick demo

End-to-end exercise with three peers on localhost:

```
make demo
```

The script:

1. starts the tracker on `:6881`;
2. peer **A** (alice) shares a 4 MiB random file;
3. peer **B** (bob) downloads it from A;
4. peer **C** (carol) downloads it from **both** A and B simultaneously;
5. SHA-256 of all three copies is compared and printed.

Resume demo (corrupt half of the file, re-`get`, observe that only the
missing chunks are pulled over the wire):

```
make resume-demo
```

## Layout

```
common.h     fixed constants (chunk size, hash size, etc.)
protocol.h/c length-prefixed framing + big-endian buffer codecs
sha256.h/c   standalone SHA-256 (FIPS 180-4)
chunk.h/c    file hashing, chunk I/O
net.h/c      thin wrappers around accept/connect
tracker.c    central registry server
peer.c       interactive client + chunk server + download workers
demo.sh      3-peer integration demo
resume_demo.sh
Makefile
REPORT.md    design write-up
```

See `REPORT.md` for the protocol specification, threading model, and a
discussion of the design trade-offs.
