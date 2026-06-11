# Demo sandbox for smart-registry. Run vhs from the demo-kit root.
# Builds a tiny sample component dir, then runs the sibling smart-registry build.
BIN="$PWD/../smart-registry/dist/bin/index.js"
SR=/tmp/sr-play
rm -rf "$SR"
mkdir -p "$SR/components/ui" "$SR/lib"
cd "$SR"
cat > lib/utils.ts <<'TS'
export function cn(...args: string[]) {
  return args.join(" ")
}
TS
cat > components/ui/button.tsx <<'TSX'
import { cn } from "@/lib/utils"
import { Slot } from "@radix-ui/react-slot"
export function Button({ className }: { className?: string }) {
  return <Slot className={cn("btn", className)} />
}
TSX
cat > components/ui/card.tsx <<'TSX'
import { Button } from "@/components/ui/button"
export function Card() {
  return (
    <div>
      <Button />
    </div>
  )
}
TSX
cat > components/ui/dialog.tsx <<'TSX'
import * as Dialog from "@radix-ui/react-dialog"
import { Button } from "@/components/ui/button"
export function Modal() {
  return (
    <Dialog.Root>
      <Button />
    </Dialog.Root>
  )
}
TSX

smart-registry() { node "$BIN" "$@"; }
autoload -Uz add-zsh-hook
PROMPT=$'%F{cyan}❯ '
__demo_reset() { print -n $'\e[0m' }
add-zsh-hook preexec __demo_reset
