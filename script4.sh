#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog
# this scans for 'error' in logs. good for a quick check.

# default to syslog if the user doesn't pass a file
LOGFILE=${1:-"/var/log/syslog"}
# default keyword is error, but we can pass another one
KEYWORD=${2:-"error"}

COUNT=0

# checking if file exists first so we don't break the script
if [ ! -f "$LOGFILE" ]; then
    echo "Error: The file $LOGFILE doesn't seem to exist."
    # trying mysql log just in case
    echo "Let me try /var/log/mysql/error.log..."
    LOGFILE="/var/log/mysql/error.log"
    
    # if it's still missing, we give up
    if [ ! -f "$LOGFILE" ]; then
        echo "Nope, $LOGFILE is missing too. Exiting!"
        exit 1
    fi
fi

echo "Analyzing file: $LOGFILE for the word '$KEYWORD'..."

# loop through each line
while IFS= read -r LINE; do
    # -i ignores case, -q makes it quiet (so it doesn't print)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # increment our counter
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "The keyword '$KEYWORD' was found $COUNT times."

# if count is big, show a retry logic if it was empty, and tail the end
if [ "$COUNT" -gt 0 ]; then
    echo ""
    echo "Here are the last 5 matching lines:"
    echo "-------------------------"
    # tailing grep output
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
else
    # do-while style retry attempt if file is empty
    echo "File might be empty or clean. Trying 'warning' keyword just to be sure..."
    backup_count=0
    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "warning"; then
            backup_count=$((backup_count + 1))
        fi
    done < "$LOGFILE"
    
    if [ "$backup_count" -gt 0 ]; then
        echo "Found $backup_count warnings though!"
    else
        echo "Nothing suspicious found."
    fi
fi
