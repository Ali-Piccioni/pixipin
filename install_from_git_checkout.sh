#!/usr/bin/env bash

set -euo pipefail

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

cd $(git rev-parse --show-toplevel)
cp pixipin /usr/local/bin/pixi
chmod a+x /usr/local/bin/pixi
which pixi
