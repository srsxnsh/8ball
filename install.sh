#!/usr/bin/env bash
set -euo pipefail

TARGET="/usr/local/bin/8ball"

if [[ $EUID -ne 0 ]]; then
  echo "Run as root (sudo) to install to $TARGET"
  exit 1
fi

curl -fsSL https://github.com/srsxnsh/8ball/blob/main/8ball.sh -o "$TARGET"
chmod +x "$TARGET"
echo "Installed 8ball to $TARGET"
