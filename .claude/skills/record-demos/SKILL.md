---
name: record-demos
description: Regenerate this repo's terminal-demo GIFs in .github/assets from the vhs tapes. Use when the CLI output or demo flows change and the README GIFs need refreshing.
---

# Record demos

Regenerates the GIFs in `.github/assets/` from the committed [vhs](https://github.com/charmbracelet/vhs) tapes (`*.tape`), using the shared `setup.sh` sandbox. Style: Catppuccin Mocha, cyan typed commands, font 17.

## Prerequisites

- `vhs` (also installs `ttyd`): `brew install vhs`
- A current build (the tapes run the built CLI via `setup.sh`'s `BIN`).

## Steps

1. Build the CLI.
2. From the repo root, render each tape:
   `vhs .github/assets/<name>.tape`
   - If vhs fails with `could not open ttyd … ERR_CONNECTION_REFUSED`, the command sandbox is blocking the local ttyd server — run vhs with sandboxing disabled.
3. Sanity-check a frame:
   `ffmpeg -y -sseof -1.5 -i .github/assets/<name>.gif -frames:v 1 /tmp/f.png` then open it.
4. Commit the updated GIFs.

## Tweaking

- Flow/commands/timing/size: the `.tape` files (`Output` must be relative; run vhs from the repo root).
- Sandbox / fake external CLIs / prompt: `.github/assets/setup.sh`.
- Spacing: the prompt is plain so the tool's own output sets the gap between commands; if you own the tool and its commands print no trailing blank, switch to a leading-newline prompt for a guaranteed one blank line before each command.
- If a tall moment (big list/tree) is clipped, raise `Set Height` in the tape.
