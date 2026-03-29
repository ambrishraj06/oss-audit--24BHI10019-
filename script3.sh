#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ambrish Raj | Course: Open Source Software
# auditing some folders to see size and permissions. included my sql dirs too.

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/etc/mysql" "/var/lib/mysql")

echo "Directory Audit Report"
echo "----------------------"

# loop through the array
for DIR in "${DIRS[@]}"; do
    # check if the directory actually exists first
    if [ -d "$DIR" ]; then
        # used awk to get perms and owner, and cut for size
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1) # dev/null so it doesnt spam permission denied errors

        echo "$DIR => Permissions: $PERMS | Owner: $OWNER | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
# checking my specific software's config dir
echo "Checking MySQL config directory specifically:"
if [ -d "/etc/mysql" ]; then
    echo "The config directory exists! Here are the permissions:"
    ls -ld /etc/mysql
else
    echo "MySQL config folder (/etc/mysql) is missing."
fi

echo "----------------------"
echo "Audit complete."
