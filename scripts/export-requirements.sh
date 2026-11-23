#!/usr/bin/env sh
# Regenerate requirements.txt from pyproject.toml + uv.lock.
# requirements.txt is a derived artifact; never edit it by hand.
set -eu

cd "$(git rev-parse --show-toplevel)"

uv export \
  --no-hashes \
  --no-emit-project \
  --format requirements-txt \
  -o requirements.txt
