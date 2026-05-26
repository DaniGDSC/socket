#!/usr/bin/env bash
#
# resume_demo.sh — show that an interrupted download resumes by
# re-using chunks already on disk, only re-fetching the missing ones.
#
# Procedure:
#   1. peer A shares an 8 MB file
#   2. peer B downloads it completely
#   3. we truncate B's copy to half its size (simulating a crash mid-download)
#   4. peer B downloads again — verify_existing() sees the surviving chunks,
#      only the missing half is fetched over the network

set -u
cd "$(dirname "$0")"

TRACKER_PORT="${TRACKER_PORT:-6882}"
SIZE_KB="${SIZE_KB:-8192}"        # 8 MB -> 128 chunks
WORKDIR="$(pwd)/demo_run_resume"

PIDS=(); KEEPERS=()
cleanup() {
    for p in "${PIDS[@]:-}";    do [ -n "$p" ] && kill "$p" 2>/dev/null || true; done
    for p in "${KEEPERS[@]:-}"; do [ -n "$p" ] && kill "$p" 2>/dev/null || true; done
    wait 2>/dev/null || true
}
trap cleanup EXIT INT TERM

wait_for() {
    local file="$1" pat="$2" tmo="${3:-10}"
    local end=$(( $(date +%s) + tmo ))
    while [ "$(date +%s)" -lt "$end" ]; do
        grep -qE "$pat" "$file" 2>/dev/null && return 0
        sleep 0.1
    done
    echo "!! timeout waiting for /$pat/ in $file"
    return 1
}

cmd_to() { echo "$2" > "$1"; }

start_peer() {
    local name="$1" port="$2" dir="$3" id="$4"
    [ -p "$name.fifo" ] || mkfifo "$name.fifo"
    sleep 86400 > "$name.fifo" & KEEPERS+=($!)
    ../peer --tracker "127.0.0.1:$TRACKER_PORT" --port "$port" \
            --dir "$dir" --id "$id" \
            < "$name.fifo" > "$name.log" 2>&1 &
    PIDS+=($!)
}

[ -x ./tracker ] && [ -x ./peer ] || make >/dev/null

rm -rf "$WORKDIR"
mkdir -p "$WORKDIR"/{a,b}
cd "$WORKDIR"

dd if=/dev/urandom of=a/big.bin bs=1024 count="$SIZE_KB" status=none
SRC_HASH=$(sha256sum a/big.bin | awk '{print $1}')
SRC_SIZE=$(stat -c %s a/big.bin)
echo "==> source file: $SRC_SIZE bytes, sha256 $SRC_HASH"

../tracker "$TRACKER_PORT" > tracker.log 2>&1 &
PIDS+=($!)
sleep 0.3

echo "==> peer A: SHARE"
start_peer a 7011 a alice
wait_for a.log "registered with tracker"
cmd_to a.fifo "share a/big.bin"
wait_for a.log "^  hash: [0-9a-f]{64}"
FILE_HASH=$(grep -oE '^  hash: [0-9a-f]{64}' a.log | head -1 | awk '{print $2}')

echo "==> peer B: first GET (full download)"
start_peer b 7012 b bob
wait_for b.log "registered with tracker"
cmd_to b.fifo "get $FILE_HASH"
wait_for b.log "Download complete" 30
H1=$(sha256sum b/big.bin | awk '{print $1}')
echo "    after first get: $H1 ($([ "$H1" = "$SRC_HASH" ] && echo OK || echo FAIL))"

cmd_to b.fifo "quit"
wait "${PIDS[-1]}" 2>/dev/null || true
unset 'PIDS[-1]'

echo
echo "==> simulating a half-completed download: truncate B's file to half size"
HALF=$(( SRC_SIZE / 2 ))
truncate -s "$HALF" b/big.bin
ls -l b/big.bin

echo "==> peer B: second GET (should resume)"
start_peer b 7012 b bob
wait_for b.log "peer .* on :7012" 5
cmd_to b.fifo "get $FILE_HASH"
wait_for b.log "Download complete" 30

H2=$(sha256sum b/big.bin | awk '{print $1}')
echo
echo "==> integrity after resume: $H2 ($([ "$H2" = "$SRC_HASH" ] && echo OK || echo FAIL))"

echo
echo "==> peer B's resume log:"
grep -E "(resume|chunk|complete)" b.log | sed 's/^/    /'

cmd_to a.fifo "quit" || true
cmd_to b.fifo "quit" || true
sleep 0.3
