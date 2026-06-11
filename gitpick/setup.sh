# Demo sandbox for gitpick. Run vhs from the demo-kit root.
# Uses the sibling ~/Desktop/nrjdalal/gitpick build; clones into a throwaway dir.
BIN="$PWD/../gitpick/dist/index.mjs"
rm -rf /tmp/gitpick-play
mkdir -p /tmp/gitpick-play
cd /tmp/gitpick-play
gitpick() { node "$BIN" "$@"; }
autoload -Uz add-zsh-hook
PROMPT=$'%F{cyan}❯ '
__demo_reset() { print -n $'\e[0m' }
add-zsh-hook preexec __demo_reset
