#!/usr/bin/bash

read -p "Enter a number : " num
sum=0
temp=$num
len=${#num}

while ((temp > 0)) ; do
digit=$(( temp % 10 ))
sum=$((sum+digit**len))
temp=$((temp /10))
done

if [ $num = $sum ];then
 echo "Amstrong "
 else
  echo "Not Amstrong"
fi  
