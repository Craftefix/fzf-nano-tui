#!/usr/bin/env fish

set dest ~/.config/fish/functions

mkdir -p $dest

cp f*.fish $dest

echo "✅ Installed fn and fnh to $dest"
funcsave fn; funcsave fnh
echo "Ran: `funcsave fn; funcsave fnh` to persist across sessions."
