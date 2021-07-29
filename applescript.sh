#!/bin/bash

## Spotlightのショートカット無効. ##
  osascript -e "
tell application \"System Preferences\"
	activate
	reveal anchor \"shortcutsTab\" of pane id \"com.apple.preference.keyboard\"
end tell

"
