#!/bin/bash
#############################################################################
# Author: Manikandan
# Version: v0.0.6
#
#
# This script will help you to manage the users on linux servers
#
# Below are the services that are supported by this script:
# 1. Add user
# 2. Remove user
# 3. List the details of existing user
#
##############################################################################


read -p "Enter the operation you like to perform on users(add, remove, list):" task
read -p "Enter the user name:" user
if grep -w $user /etc/passwd > /dev/null  && [ $task == "add" ]
then
	echo "User $user already exist"
	exit 1
fi

case $task in
	add)
		useradd $user
		echo "User $user added successfully"
		grep -w $user /etc/passwd
		;;

	remove)
		userdel -r $user
		echo "User $user removed successfully"
		;;

	list)
		grep -w $user /etc/passwd
esac
