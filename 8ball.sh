#!/bin/bash
set -euo pipefail

VERSION="1.0.0"

function show_help() {
  cat <<EOF
----------------------------MAGIC 8-BALL---#

Options:
  --help                Show this help message and exit
  --version             Show version information and exit
  shake [+question]     Shake the ball

Shakes a magic 8-ball in your terminal.
EOF
}

function show_version() {
  echo "$(basename "$0") is on version $VERSION"
}

if [[ $# -eq 0 ]]; then
  echo "No command given. Try --help for usage, or use shake to ask a question."
  exit 1
fi

case "$1" in
  --help)
    show_help
    exit 0
    ;;
  --version)
    show_version
    exit 0
    ;;
  shake)

    defaults=("youre cooked lmao" "yeah maybe ig" "nah u fried fr" "yes" "no" "maybe" "perchance" "maychancehaps" "yeah probably tbh" "idk go gamble" "depends on what you think" "lmao who cares")
    length=${#defaults[@]}
    index=$((RANDOM % length))
    echo "${defaults[$index]}"
    ;;
  *)
    echo "Invalid command: $1"
    echo "Try --help for usage, or use shake to ask a question."
    exit 1
    ;;
esac
