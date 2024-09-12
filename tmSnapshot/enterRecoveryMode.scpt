display dialog "This will restart your Mac into Recovery Mode. Are you sure you want to continue?" buttons {"Cancel", "Restart"} default button "Restart"

if button returned of result is "Restart" then
    do shell script "sudo nvram \"recovery-boot-mode=unused\"; sudo shutdown -r now" with administrator privileges
end if
