display dialog "Do you want to create a Time Machine snapshot of your macOS?" buttons {"Cancel", "Create Snapshot"} default button "Create Snapshot"

if button returned of result is "Create Snapshot" then
    try
        do shell script "tmutil localsnapshot" with administrator privileges
        display dialog "Snapshot created successfully." buttons {"OK"} default button "OK"
    on error errMsg
        display dialog "Failed to create snapshot: " & errMsg buttons {"OK"} default button "OK"
    end try
end if
