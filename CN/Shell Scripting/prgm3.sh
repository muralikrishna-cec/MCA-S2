#!/bin/bash

read -p "Enter a number : " num
sum=0
temp=$num
n=${#num}

while [ $temp -gt 0 ]; do 
digit=$(( $temp % 10 ))
sum=$(( sum+$digit**n ))
temp=$(( temp/10 ))
done

if [ $sum -eq $num ]; then
  echo "Number is Amstrong"
else
  echo "Number is Not Amstrong"
fi

    