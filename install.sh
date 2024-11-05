#!/usr/bin/env bash

set -euo pipefail

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

curl -o /usr/local/bin/pixi https://raw.githubusercontent.com/Ali-Piccioni/pixipin/main/pixipin
chmod a+x /usr/local/bin/pixi
