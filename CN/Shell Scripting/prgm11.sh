#!/bin/bash

read -p "Enter a Number : " num
bin=""
while (( num >0 ))
do
  temp=$((num%2))
  bin="$temp$bin"
  num=$((num/2))
done 

echo "Binary $bin"