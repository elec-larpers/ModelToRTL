#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT="$ROOT/out"
if ! command -v iverilog >/dev/null 2>&1; then echo "iverilog not found" >&2; exit 1; fi
if ! command -v vvp >/dev/null 2>&1; then echo "vvp not found" >&2; exit 1; fi
mkdir -p "$OUT"
mapfile -t SRC_FILES < <(sed "s#^#$ROOT/#" "$ROOT/sources.f")
iverilog -g2012 -o "$OUT/yolo26n_top_tb.vvp" "${SRC_FILES[@]}" "$ROOT/tb/yolo26n_top_tb.v"
cd "$ROOT/rtl"
vvp "$OUT/yolo26n_top_tb.vvp" +INPUT_HEX="$ROOT/testvectors/input_random.hex" +EXPECTED_HEX="$ROOT/testvectors/expected_random.hex"
