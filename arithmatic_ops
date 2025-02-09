#!/bin/bash
#Performing basic arithmatic operations
echo "Welcome to the test script"
read -p "Please enter your name: " name
echo "Hello $name, This is your work place. you can make a basic culations here."
read -p "Enter tha first number: " num1
read -p "Enter the second nnumber: " num2
read -p "Enter the action should be performed: " act
case $act in
        a* | A*)
                result=$(($num1+$num2))
                echo "The $act result is $result"
                ;;
        s* | S*)
                result=$(($num1-$num2))
                echo "The $act result is $result"
                ;;
        m* | M*)
                result=$(($num1*$num2))
                echo "The $act result is $result"
                ;;
        d* | D*)
                result=$(($num1/num2))
                echo "The $act result is $result"
                ;;
        *)
                echo "Only the operations +,-,*,/ can be performed here as of now."
                exit 1
                ;;

esac
if [ $(($result % 2)) -eq 0 ]
then
        echo "The operation result $result is an Even number"
else
        echo "The operation result $result is Odd number "
fi
