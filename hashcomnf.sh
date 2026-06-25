#!/usr/bin/env bash
# Compatibility wrapper — equivalent to: hashcom.sh --no-figlet
exec "$(dirname "${BASH_SOURCE[0]}")/hashcom.sh" --no-figlet "$@"
