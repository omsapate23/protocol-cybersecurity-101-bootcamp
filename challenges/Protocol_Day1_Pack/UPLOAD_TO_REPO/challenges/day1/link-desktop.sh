#!/usr/bin/env bash
set -euo pipefail
challenge_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$HOME/Desktop"
if [ -e "$HOME/Desktop/Day1" ] && [ ! -L "$HOME/Desktop/Day1" ]; then
    echo "Desktop/Day1 already exists; leaving it unchanged. Challenges: $challenge_dir"
else
    ln -sfn "$challenge_dir" "$HOME/Desktop/Day1"
    echo "Day 1 challenges linked at $HOME/Desktop/Day1"
fi
