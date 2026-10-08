#!/usr/bin/env bash
set -euo pipefail
challenge_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
briefing="$challenge_dir/level1/.briefing"
if [ ! -e "$briefing" ]; then
    base64 -d "$challenge_dir/level1/.briefing.b64" > "$briefing"
fi
mkdir -p "$HOME/Desktop"
if [ -e "$HOME/Desktop/Day1" ] && [ ! -L "$HOME/Desktop/Day1" ]; then
    echo "Desktop/Day1 already exists; leaving it unchanged. Challenges: $challenge_dir"
else
    ln -sfn "$challenge_dir" "$HOME/Desktop/Day1"
    echo "Day 1 challenges linked at $HOME/Desktop/Day1"
fi
