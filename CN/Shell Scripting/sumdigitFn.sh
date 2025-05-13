#!/bin/bash

#Function Without Arguments

sumDigit() {
  read -p "Enter a Number : " num
  sum=0
  while (( num > 0))
  do
    rem=$((num%10))
    sum=$((sum+rem))
    num=$((num/10))
  done
  echo "SUM OF DIGIT (Without Argument) : $sum"
}

sumDigit


#Function With Arguments

sumDigit() {
  num=$1  
  sum=0
  while (( num > 0))
  do
    rem=$((num%10))
    sum=$((sum+rem))
    num=$((num/10))
  done
  echo "SUM OF DIGIT (With Argument) : $sum"
}

read -p "Enter a Number : " number
sumDigit "$number"


# Use local inside the function to avoid polluting global scope:
# local num sum rem
