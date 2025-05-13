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

  # Calculate digit^n manually since Bash doesn't support ** for power in arithmetic
  #  for (( i=0; i<n; i++ ))
  #  do
  #      digit_pow=$(( digit_pow * digit ))
  #  done    