#! /bin/bash

# To check the status of the service

read -p "Enter the service to check:" service # To read the name as the service 

if systemctl is-active $service --queit; # Check whether the service is active and running fine
then
echo "The service $service is running fine"
elif ! systemctl is-failed $service --queit; # Check whether the service is failed
then
echo "The service $service is failed, need to check"
else
echo "Unable to find the service $service"  # Default output
fi