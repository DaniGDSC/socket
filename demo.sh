#!/usr/bin/env bash
#
# demo.sh — runs tracker + 3 peers on localhost.
#
#   A shares a fresh random 4 MB file.
#   B downloads from A.
#   C downloads from BOTH A and B in parallel.
#
# At the end SHA-256s are compared and per-peer logs are printed.

set -u
cd "$(dirname "$0")"

TRACKER_PORT="${TRACKER_PORT:-6881}"
SIZE_KB="${SIZE_KB:-4096}"        # 4 MB by default
WORKDIR="$(pwd)/demo_run"

PIDS=()
KEEPERS=()
cleanup() {
    for pid in "${PIDS[@]:-}";    do [ -n "$pid" ] && kill "$pid"    2>/dev/null || true; done
    for pid in "${KEEPERS[@]:-}"; do [ -n "$pid" ] && kill "$pid"    2>/dev/null || true; done
    wait 2>/dev/null || true
}
trap cleanup EXIT INT TERM

wait_for() {
    local file="$1" pattern="$2" timeout="${3:-10}"
    local deadline=$(( $(date +%s) + timeout ))
    while [ "$(date +%s)" -lt "$deadline" ]; do
        grep -qE "$pattern" "$file" 2>/dev/null && return 0
        sleep 0.1
    done
    echo "!! timeout waiting for /$pattern/ in $file"
    sed 's/^/   /' "$file"
    return 1
}

cmd_to() { echo "$2" > "$1"; }

start_peer() {
    local name="$1" port="$2" dir="$3" id="$4"
    mkfifo "$name.fifo"
    # keep the FIFO open so the peer's fgets() doesn't see EOF
    sleep 86400 > "$name.fifo" &
    KEEPERS+=($!)
    ../peer --tracker "127.0.0.1:$TRACKER_PORT" --port "$port" \
            --dir "$dir" --id "$id" \
            < "$name.fifo" > "$name.log" 2>&1 &
    PIDS+=($!)
}

# build if needed
[ -x ./tracker ] && [ -x ./peer ] || make >/dev/null

rm -rf "$WORKDIR"
mkdir -p "$WORKDIR"/{a,b,c}
cd "$WORKDIR"

echo "==> generating ${SIZE_KB}KB random payload"
dd if=/dev/urandom of=a/movie.bin bs=1024 count="$SIZE_KB" status=none
INPUT_HASH=$(sha256sum a/movie.bin | awk '{print $1}')
echo "    sha256 = $INPUT_HASH"
echo

echo "==> starting tracker on :$TRACKER_PORT"
../tracker "$TRACKER_PORT" > tracker.log 2>&1 &
PIDS+=($!)
sleep 0.3

echo
echo "==> peer A (alice, port 7001) — SHARE"
start_peer a 7001 a alice
wait_for a.log "registered with tracker"
cmd_to a.fifo "share a/movie.bin"
wait_for a.log "^  hash: [0-9a-f]{64}"
FILE_HASH=$(grep -oE '^  hash: [0-9a-f]{64}' a.log | head -1 | awk '{print $2}')
echo "    file hash = $FILE_HASH"

echo
echo "==> peer B (bob, port 7002) — GET (from A only)"
start_peer b 7002 b bob
wait_for b.log "registered with tracker"
cmd_to b.fifo "list"
sleep 0.2
cmd_to b.fifo "get $FILE_HASH"
wait_for b.log "Download complete" 30

echo
echo "==> peer C (carol, port 7003) — GET (from A and B)"
start_peer c 7003 c carol
wait_for c.log "registered with tracker"
cmd_to c.fifo "peers $FILE_HASH"
sleep 0.2
cmd_to c.fifo "get $FILE_HASH"
wait_for c.log "Download complete" 30

echo
echo "==> integrity"
H_A=$(sha256sum a/movie.bin | awk '{print $1}')
H_B=$(sha256sum b/movie.bin | awk '{print $1}')
H_C=$(sha256sum c/movie.bin | awk '{print $1}')
check() { [ "$1" = "$INPUT_HASH" ] && echo OK || echo FAIL; }
printf "    A %s  %s\n" "$H_A" "$(check "$H_A")"
printf "    B %s  %s\n" "$H_B" "$(check "$H_B")"
printf "    C %s  %s\n" "$H_C" "$(check "$H_C")"

echo
echo "==> tracker.log"
sed 's/^/    /' tracker.log
echo
echo "==> a.log"
sed 's/^/    /' a.log
echo
echo "==> b.log"
sed 's/^/    /' b.log
echo
echo "==> c.log"
sed 's/^/    /' c.log

# shut down peers gracefully
cmd_to a.fifo "quit" || true
cmd_to b.fifo "quit" || true
cmd_to c.fifo "quit" || true
sleep 0.3
