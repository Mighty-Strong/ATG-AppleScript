try
    set snapshotList to do shell script "tmutil listlocalsnapshots /"
    
    if snapshotList is not "" then
        display dialog "Local Snapshots:" & return & snapshotList buttons {"OK"} default button "OK"
    else
        display dialog "No local snapshots found." buttons {"OK"} default button "OK"
    end if
on error errMsg
    display dialog "An error occurred: " & errMsg buttons {"OK"} default button "OK"
end try
