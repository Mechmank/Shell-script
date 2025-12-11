#! /bin/bash

# To check disk space availability and send mail if less than 20%.

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//') 

if [ "$USAGE" -gt 80 ]; then
    echo "Disk usage is above 80% on $(hostname)" | mail -s "Disk Alert" admin@example.com
fi
# Check the used space in / using df -h command. By printing 2nd row and 5th column