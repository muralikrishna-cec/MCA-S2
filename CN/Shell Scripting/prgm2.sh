#!/bin/bash

read -p "Enter 1st no : " num1
read -p "Enter 2nd no : " num2
read -p "Enter 3rd no : " num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ];then
    echo "largest no is $num1"
elif [ $num2 -gt $num3 ];then
    echo "largest no is $num2"
else
    echo "largest no is $num3"

fi
