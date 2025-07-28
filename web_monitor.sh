#!/bin/bash
# check if httpd or nginx is installed in the server and make a entry in a log file
# Give executable permission - chmod +x web_monitor.sh
# Schedle a cro job for contineous monitor - crontab -e
# * * * * * /home/user/web_monitor.sh - Runs the script for every minute
if 
    systemctl list-units --type=service | grep -q httpd; 
    then 
    service="httpd"
elif 
    systemctl list-units --type=service | grep -q nginx; 
    then 
    service="nginx"
else
    echo "$(date) : NO web service found" >> /var/log/web_service_monitor.log
exit 1
fi

# Check if running
if ! systemctl is-active --quiet $service; then
    systemctl start  $service
    echo "$(date) : $service was down" >> /var/log/web_service_monitor.log
else
    echo "$(date) : $service is running fine" >> /var/log/web_service_monitor.log
fi