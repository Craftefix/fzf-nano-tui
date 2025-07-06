#!/usr/bin/env fish

set dest ~/.config/fish/functions

mkdir -p $dest

cp functions/*.fish $dest

echo "✅ Installed fn and fnh to $dest"
echo "Run: `funcsave fn; funcsave fnh` to persist in universal scope if desired."
