display dialog "Do you want to disable the SSH server?" buttons {"Cancel", "Disable"} default button "Disable"

if button returned of result is "Disable" then
    try
        do shell script "sudo systemsetup -setremotelogin off" with administrator privileges
        display dialog "SSH server has been disabled." buttons {"OK"} default button "OK"
    on error errMsg
        display dialog "An error occurred: " & errMsg buttons {"OK"} default button "OK"
    end try
end if