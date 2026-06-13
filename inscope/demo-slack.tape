# Slack on the acme (work) workspace: interactive add showing the Yes/No selector
# confirms ("Allow Slack to post messages?", "Store the Slack token now?") plus
# the keychain service prompt. Render from the repo root: vhs inscope/demo-slack.tape
Output inscope/demo-slack.gif

Require node

Set Shell zsh
Set FontSize 17
Set FontFamily "Berkeley Mono"
Set Width 1280
Set Height 640
Set Padding 22
Set Theme "GitHub Dark"
Set TypingSpeed 55ms

Hide
Type "source inscope/setup.sh" Enter
Type "inscope init" Enter
Type "clear" Enter
Show

Sleep 800ms
Type "inscope add ~/acme" Sleep 300ms Enter
Sleep 1500ms
Enter
Sleep 1200ms
Down Sleep 400ms Enter
Sleep 1200ms
Type "neeraj@acme.org" Sleep 300ms Enter
Sleep 1100ms
Enter
Sleep 1300ms
Up Sleep 200ms Up Sleep 200ms Up Sleep 200ms Up Sleep 500ms Space Sleep 900ms Enter
Sleep 1600ms
Enter
Sleep 1600ms
Enter
Sleep 1300ms
Down Sleep 800ms Enter
Sleep 2800ms

Type "inscope list" Sleep 300ms Enter
Sleep 3400ms
