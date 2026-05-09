# This script will run the post patching validation commands on multiple servers and save the output in the local file.
# Change the commands if need to run the various commands

#! /bin/bash
read -p "Enter the username: " user_name
read -p -s "Enter the password: " password  # -s used to hide/private the values

echo "" > output.csv  #Remove the existing content in the output file

while read -r host 