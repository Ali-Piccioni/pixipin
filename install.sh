#!/usr/bin/env bash

set -euo pipefail

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

# On a fresh MacBook directory is in the PATH but not created.
mkdir -p /usr/local/bin
curl -o /usr/local/bin/pixi https://raw.githubusercontent.com/Ali-Piccioni/pixipin/main/pixipin
chmod a+x /usr/local/bin/pixi
