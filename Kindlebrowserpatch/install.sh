#!/bin/sh

set -e

TMPDIR=/mnt/us/KFPM-Temporary
mkdir -p "$TMPDIR"

# Download + Extract
curl -fSL --progress-bar -o "$TMPDIR/kinamp.zip" https://github.com/emilypeto/KindleBrowserPatch/releases/latest/download/kinamp.zip
unzip -oq "$TMPDIR/kindle_browser_patch-2.1.0-armhf.zip
" -d /mnt/us

cd kindle_browser_patch-2.1.0-armhf
cp -r /mnt/us/KFPM-Temporary /mnt/us/extensions/

# Cleanup
rm -rf "$TMPDIR"

exit 0

