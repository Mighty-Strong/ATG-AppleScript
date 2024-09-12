display dialog "Are you sure you want to restart your Mac?" buttons {"Cancel", "Restart"} default button "Restart"

if button returned of result is "Restart" then
    do shell script "sudo shutdown -r now" with administrator privileges
end if
