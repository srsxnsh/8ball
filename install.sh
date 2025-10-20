#!/usr/bin/env bash
set -euo pipefail

SCRIPT_NAME="8ball.sh"
TARGET="/usr/local/bin/8ball"

if [[ $EUID -ne 0 ]]; then
  echo "Run as root (sudo) to install to $TARGET"
  exit 1
fi

curl -fsSL https://github.com/srsxnsh/8ball/blob/main/$SCRIPT_NAME -o "$TARGET"
chmod +x "$TARGET"
echo "Installed 8ball to $TARGET"
