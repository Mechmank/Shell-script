#! /bin/bash
# To check the ping status of mltiple servers by getting the input from external file
while read host; 
do
    if ping -c 1 $host &>/dev/null; then
        echo "$host is reachable"
    else
        echo "$host is DOWN"
    fi
done < host.txt       # Server names listed in host.txt file