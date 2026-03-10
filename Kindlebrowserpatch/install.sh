#!/bin/sh

set -e

TMPDIR="/mnt/us/KFPM-Temporary"
EXTDIR="/mnt/us/extensions"
ZIP_URL="https://github.com/emilypeto/KindleBrowserPatch/releases/latest/download/kindle_browser_patch-2.1.0-armhf.zip"

mkdir -p "$TMPDIR"
mkdir -p "$EXTDIR"

curl -fSL -o "$TMPDIR/kbp.zip" "$ZIP_URL"
unzip -oq "$TMPDIR/kbp.zip" -d "$TMPDIR"

cp -r "$TMPDIR/kindle_browser_patch-2.1.0-armhf" "$EXTDIR/"

rm -rf "$TMPDIR"

exit 0



