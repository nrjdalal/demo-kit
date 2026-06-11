# smart-registry: build a shadcn-compatible registry from components, with the
# per-item dependency/file counts + summary table. Render from the demo-kit root:
# vhs smart-registry/demo.tape
Output smart-registry/demo.gif

Require node

Set Shell zsh
Set FontSize 17
Set Width 1120
Set Height 700
Set Padding 22
Set Theme "Catppuccin Mocha"
Set TypingSpeed 55ms

Hide
Type "source smart-registry/setup.sh" Enter
Type "clear" Enter
Show

Sleep 800ms
Type "smart-registry components/ui --with-utils" Sleep 300ms Enter
Sleep 4000ms
Type "ls public/r" Sleep 300ms Enter
Sleep 2800ms
Sleep 1200ms
