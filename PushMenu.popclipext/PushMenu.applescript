set b to "de.sekal.pushmenu"
tell application "System Events"
	if bundle identifier of processes contains b then
		tell application "pushmenu"
			sendmessage "{popclip text}"
		end tell
	else
		tell application "pushmenu"
			activate
			delay 2.5
			sendmessage "{popclip text}"
		end tell
	end if
end tell