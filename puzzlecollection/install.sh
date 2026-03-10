#!/bin/sh

set -e

TMPDIR=/mnt/us/KFPM-Temporary
mkdir -p "$TMPDIR"

# Download + Extract
curl -fSL --progress-bar -o "$TMPDIR/puzzles.zip" https://github.com/HackerAUG/kindlepuzzles/releases/download/inital/puzzles.zip
unzip -q "$TMPDIR/puzzles.zip" -d /mnt/us/extensions

# Cleanup
rm -rf "$TMPDIR"

exit 0
