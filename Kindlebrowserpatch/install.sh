#!/bin/sh

set -e

TMPDIR=/mnt/us/KFPM-Temporary
EXTDIR=/mnt/us/extensions
mkdir -p "$TMPDIR"
mkdir -p "$EXTDIR"

# 1. Download directly to a consistent name
curl -fSL --progress-bar -o "$TMPDIR/KShips.zip" https://github.com/emilypeto/KindleBrowserPatch/releases/latest/download/kindle_browser_patch-2.1.0-armhf.zip

# 2. Unzip directly into the extensions folder
unzip -oq "$TMPDIR/patch.zip" -d "$EXTDIR"

# 3. Cleanup
rm -rf "$TMPDIR"

exit 0


