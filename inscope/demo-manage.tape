# Manage workspaces: list, interactive edit (add the Slack server -> the Yes/No
# selector confirms, defaulting to the current value), rm with a type-the-label
# confirm, list. Render from the repo root: vhs inscope/demo-manage.tape
Output inscope/demo-manage.gif

Require node

Set Shell zsh
Set FontSize 17
Set Width 1120
Set Height 1080
Set Padding 22
Set Theme "Catppuccin Mocha"
Set TypingSpeed 55ms

Hide
Type "source inscope/setup-seeded.sh" Enter
Sleep 3s
Type "clear" Enter
Show

Sleep 800ms
Type "inscope list" Sleep 300ms Enter
Sleep 2600ms

Type "inscope edit acme" Sleep 300ms Enter
Sleep 1600ms
Enter
Sleep 1000ms
Enter
Sleep 1000ms
Enter
Sleep 1200ms
Up Sleep 200ms Up Sleep 200ms Up Sleep 200ms Up Sleep 500ms Space Sleep 900ms Enter
Sleep 1600ms
Enter
Sleep 1400ms
Up Sleep 800ms Enter
Sleep 1300ms
Down Sleep 800ms Enter
Sleep 2600ms

Type "inscope rm personal" Sleep 300ms Enter
Sleep 1600ms
Type "personal" Sleep 300ms Enter
Sleep 2200ms

Type "inscope list" Sleep 300ms Enter
Sleep 3200ms
