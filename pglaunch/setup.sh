# Demo sandbox for pglaunch. Run vhs from the demo-kit root. Requires Docker.
# pglaunch launches a disposable postgres:alpine container and prints its URL
# (default creds postgres:postgres — a throwaway local container, not a secret).
BIN="$PWD/../pglaunch/dist/bin/index.js"
cd /tmp
pglaunch() { node "$BIN" "$@"; }
autoload -Uz add-zsh-hook
PROMPT=$'%F{cyan}❯ '
__demo_reset() { print -n $'\e[0m' }
add-zsh-hook preexec __demo_reset
