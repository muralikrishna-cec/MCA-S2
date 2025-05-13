#!/bin/bash

read -p "Enter a number : " num

rev=0

while (( num >0 ))
do
  rem=$(( num%10 ))
  rev=$(( rev*10+rem ))
  num=$(( num/10 ))
done

echo "Reverse = $rev"

# The correct syntax for arithmetic evaluation in Bash is $(()), not (( )) in this context.
