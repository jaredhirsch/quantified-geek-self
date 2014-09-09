#!/usr/bin/osascript

global frontApp, frontAppName, windowTitle, timestamp
# the delay is only included for testing via command-line: run the script,
# switch focus to a new window, wait a bit, then check the output
#delay 5
# TODO figure out how to bail if the screen is locked
tell application "System Events"
  set timestamp to (do shell script "date +%s")
	set frontApp to first application process whose frontmost is true
	set frontAppName to name of frontApp
	tell process frontAppName
		tell (1st window whose value of attribute "AXMain" is true)
			set windowTitle to value of attribute "AXTitle"
		end tell
	end tell
end tell
return {timestamp, frontAppName, windowTitle}
