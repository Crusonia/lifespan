#!/usr/bin/env bash
# Reproduce the Lifespan for All v0.1 model runs with Demeter.
# Usage: model/run.sh [path-to-demeter-checkout]
# Outputs are validation-only: Demeter's dietary coefficients are synthetic.
set -euo pipefail

DEMETER_REF="bfc2194"   # Demeter commit used for v0.1 draft results (0.1.0a1)
DEMETER_DIR="${1:-./.demeter}"
OUT_DIR="$(cd "$(dirname "$0")" && pwd)/results"

if [ ! -d "$DEMETER_DIR/.git" ]; then
  git clone https://github.com/Crusonia/Demeter "$DEMETER_DIR"
fi
git -C "$DEMETER_DIR" fetch --depth 1 origin "$DEMETER_REF" 2>/dev/null || true
git -C "$DEMETER_DIR" checkout -q "$DEMETER_REF" || echo "warning: could not check out $DEMETER_REF; using current checkout"

cd "$DEMETER_DIR"
uv sync -q
mkdir -p "$OUT_DIR"
uv run demeter healthspan scenarios/baseline.yaml --output "$OUT_DIR/baseline_healthspan.json"
uv run demeter compare scenarios/baseline.yaml scenarios/reduce_upf_30.yaml \
  --output "$OUT_DIR/compare_baseline_vs_reduce_upf_30.json"
uv run demeter validate || true
echo "Results written to $OUT_DIR (validation_only)."
