display dialog "Do you want to enable the SSH server?" buttons {"Cancel", "Enable"} default button "Enable"

if button returned of result is "Enable" then
    try
        do shell script "sudo systemsetup -setremotelogin on" with administrator privileges
        display dialog "SSH server has been enabled." buttons {"OK"} default button "OK"
    on error errMsg
        display dialog "An error occurred: " & errMsg buttons {"OK"} default button "OK"
    end try
end if
