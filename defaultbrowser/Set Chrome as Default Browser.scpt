tell application "System Events"
	set theAppPath to POSIX path of (path to application "Google Chrome")
end tell

tell application "Safari"
	activate
	delay 1
	open location "x-default-browser:" & theAppPath
	delay 2
	quit
end tell

set defaultBrowserList to paragraphs of (do shell script "defaults read \\
    ~/Library/Preferences/com.apple.LaunchServices/com.apple.launchservices.secure \\
    | awk -F'\"' '/http;|https;/{print window[(NR)-1]}{window[NR]=$2}'")

if (count defaultBrowserList) is not equal to 2 then return

if item 1 of defaultBrowserList is equal to item 2 of defaultBrowserList then
	set defaultBrowser to item 1 of defaultBrowserList
else
	return
end if

if defaultBrowser contains "chrome" then
	
	tell application "Google Chrome"
		if it is running then
			quit
		else
			activate
			open location "https://www.dedhamcountryday.org/"
			delay 1
			activate
			delay 5
			quit
		end if
	end tell
	
end if