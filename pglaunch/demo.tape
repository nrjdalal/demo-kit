# pglaunch: spin up a disposable PostgreSQL container and print its connection URL.
# Requires Docker. Render from the demo-kit root: vhs pglaunch/demo.tape
Output pglaunch/demo.gif

Require node

Set Shell zsh
Set FontSize 17
Set Width 1120
Set Height 540
Set Padding 22
Set Theme "Catppuccin Mocha"
Set TypingSpeed 55ms

Hide
Type "source pglaunch/setup.sh" Enter
Type "clear" Enter
Show

Sleep 800ms
Type "pglaunch -n my-app" Sleep 300ms Enter
Sleep 6500ms
Sleep 1500ms
