# gitpick hero: dry-run preview, clone a folder + tree, clone a single file.
# Render from the demo-kit root: vhs gitpick/demo.tape
Output gitpick/demo.gif

Require node

Set Shell zsh
Set FontSize 17
Set Width 1120
Set Height 720
Set Padding 22
Set Theme "Catppuccin Mocha"
Set TypingSpeed 55ms

Hide
Type "source gitpick/setup.sh" Enter
Type "clear" Enter
Show

Sleep 800ms
Type "gitpick nrjdalal/gitpick/tree/main/bin --dry-run" Sleep 300ms Enter
Sleep 3000ms
Type "gitpick nrjdalal/gitpick/tree/main/bin --tree" Sleep 300ms Enter
Sleep 3800ms
Type "gitpick nrjdalal/gitpick/blob/main/package.json" Sleep 300ms Enter
Sleep 3000ms
Sleep 1200ms
