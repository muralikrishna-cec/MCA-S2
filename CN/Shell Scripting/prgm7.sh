#!/bin/bash

read -p "Enter the Mark 1 : " mark1
read -p "Enter the Mark 2 : " mark2
read -p "Enter the Mark 3 : " mark3

sum=$(( mark1+mark2+mark3 ))

avg=$(( sum/3 ))
echo "Average : $avg"

if (( avg >= 90 )); then
   echo "GRADE : S"
elif (( avg < 90 && avg >= 80 ));then
   echo "GRADE : A"    
elif (( avg < 80 && avg >= 60 ));then
   echo "GRADE : B" 
elif (( avg < 60 && avg >= 40 ));then
   echo "GRADE : P"      
else 
  echo "GRADE : F"   
fi   

#TL;DR:
#✔️ Use semicolon ; if then is on the same line.

#❌ Don’t use semicolon if then is on the next line.
     