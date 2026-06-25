#!/usr/bin/env bash
set -euo pipefail

FIGLET=true

while [[ $# -gt 0 ]]; do
  case "$1" in
    -n|--no-figlet) FIGLET=false; shift ;;
    -h|--help)
      echo "Usage: hashcom.sh [-n|--no-figlet] FILE"
      echo ""
      echo "  Computes an 8-char SHA-256 hash of FILE and prints it as a comment."
      echo ""
      echo "Options:"
      echo "  -n, --no-figlet   Skip the figlet banner"
      echo "  -h, --help        Show this help message"
      exit 0 ;;
    *) break ;;
  esac
done

if $FIGLET; then
  figlet hashcom
fi

if [[ -z "${1:-}" ]] || [[ ! -f "$1" ]]; then
  echo "[Info] no file or bad file..."
  echo ""
  exit 1
fi

hash=$(shasum -a 256 "$1" | cut -c1-8)
echo "/* $hash */"
echo ""

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ -f "$SCRIPT_DIR/hc/$hash" ]]; then
  echo "[Registry match:]"
  cat "$SCRIPT_DIR/hc/$hash"
  echo ""
fi
