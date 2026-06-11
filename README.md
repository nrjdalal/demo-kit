# demo-kit

One place for every CLI demo. Each tool gets a folder with its [vhs](https://github.com/charmbracelet/vhs) tape(s), sandbox `setup.sh`, and rendered GIF(s). Tool repos stay clean — their READMEs just point at the GIFs here by raw URL:

```
https://raw.githubusercontent.com/nrjdalal/demo-kit/main/<tool>/demo.gif
```

Consistent style across all of them: Catppuccin Mocha, cyan typed commands, font 17.

## Layout

```
demo-kit/
  _template/            setup.sh + demo.tape to copy for a new tool
  .claude/skills/       record-demos skill
  gitpick/              demo.tape, demo-interactive.tape, setup.sh, *.gif
  <tool>/               …one folder per CLI
```

Each `<tool>/setup.sh` points `BIN` at the **sibling** built repo (`../<tool>/dist/...`), so clone the tool next to demo-kit and build it first.

## One-time

```sh
brew install vhs        # also installs ttyd
```

## Add / regenerate a demo

1. `mkdir <tool>` and copy `_template/{setup.sh,demo.tape}` into it.
2. In `<tool>/setup.sh`: set `BIN` to `$PWD/../<tool>/dist/...` and rename the function to the command. Uncomment the throwaway-dir `cd` if the tool writes files.
3. In `<tool>/demo.tape`: set `Output <tool>/demo.gif`, `source <tool>/setup.sh`, and write the command flow.
4. Build the sibling tool, then render from the **demo-kit root**:
   ```sh
   vhs <tool>/demo.tape
   ```
   (If vhs errors with `could not open ttyd … ERR_CONNECTION_REFUSED`, run it with your shell sandbox disabled.)
5. Frame-check before committing:
   `ffmpeg -y -sseof -1.5 -i <tool>/demo.gif -frames:v 1 /tmp/f.png && open /tmp/f.png`

## Conventions / gotchas

- `Output` must be **relative**; vhs rejects absolute paths. Run vhs from the demo-kit root.
- **Spacing.** Plain cyan prompt (no leading newline) — the tool's own output sets the gap between commands. Order commands so any with a trailing blank line aren't followed by one without (keeps it uniform). If you own the tool and it prints no trailing blanks, a leading-newline prompt gives a guaranteed one blank line before each command.
- **Cyan typed commands.** `%F{cyan}` with no `%f` bleeds into the typed input; the `preexec` hook resets color before output.
- **Never print secrets.** Stub external CLIs; use placeholder identities; sandbox `$HOME` when the tool writes to it.
- **Sizing.** Raise `Set Height` if a tall list/tree gets clipped.

## Demos

| Tool | Demos |
| --- | --- |
| [gitpick](https://github.com/nrjdalal/gitpick) | `demo` (clone file/folder + tree), `demo-interactive` (`-i` picker) |
