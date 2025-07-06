# fzf-nano-tui

A minimal terminal file manager UI for the [fish shell](https://fishshell.com/), using [`fzf`](https://github.com/junegunn/fzf) and `nano`. Provides interactive file actions with automatic history management.

---

## Features

- File selection via `fzf`
- Edit (nano), Delete, or Rename files
- Saves edited files to `~/.fn` as backups
- Search history with `fnh`
- Auto cleanup to keep history under 1GB or 100 files

---

## Installation

```
git clone https://github.com/Craftefix/fzf-nano-tui ~/.fzf-nano-tui  
cd ~/.fzf-nano-tui  
fish install.fish
```

Requires `fish`, `fzf`, and `nano`.

---

## Usage

### `fn`

Launch `fn` to pick a file and select an action:
```
╭──────────────────────────────╮  
│ Selected file:               │  
│ example.txt                  │  
│                              │  
│ 1 / e - Edit (nano)          │  
│ 2 / d - Delete (rm)          │  
│ 3 / m - Move (rename)        │  
│                              │  
│ Press Ctrl+C to quit         │  
╰──────────────────────────────╯
```
- Edits save a backup copy to `~/.fn`  
- Rename updates UI with new filename  
- Delete exits the function

### `fnh`

Run `fnh` to search and open files from history stored in `~/.fn`. The history auto-trims by deleting oldest files to stay under 1GB or 100 files.

---

## Configuration

- History stored in `~/.fn`  
- Default editor is `nano` (changeable)  
- Limits: 1GB or 100 files in history (adjustable)

---

## License

MIT © 2025 Craftefix
