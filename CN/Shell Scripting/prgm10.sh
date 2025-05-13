#!/bin/bash

read -p "Enter a number : " num

for(( i=1 ; i<=5; i++))
do
  echo "$i * $num = $((i*num))"
done  

# using 2 loops 

count=6
while (( count <=10 ))
do
  echo "$count * $num = $((count*num))"
  (( count++ ))
done