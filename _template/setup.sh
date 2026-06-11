# Demo sandbox — sourced by the tape's Hide block. Run vhs from the repo root.
# Edit BIN + the function name; uncomment the throwaway-dir cd if your tool writes files.

BIN="$PWD/dist/index.mjs"        # <- your built entrypoint
cli() { node "$BIN" "$@"; }      # <- rename `cli` to your command name

# If the tool writes into the cwd, work in a throwaway dir (keeps the demo clean):
# rm -rf /tmp/demo-play && mkdir -p /tmp/demo-play && cd /tmp/demo-play

# Cyan prompt; the cyan bleeds into the typed command, reset before output.
# Plain prompt (no leading newline) — the tool's own output sets the spacing.
autoload -Uz add-zsh-hook
PROMPT=$'%F{cyan}❯ '
__demo_reset() { print -n $'\e[0m' }
add-zsh-hook preexec __demo_reset
