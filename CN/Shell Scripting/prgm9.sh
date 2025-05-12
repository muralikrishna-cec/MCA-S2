#!/bin/bash

read -p "enter a starting and ending range " start end
count=0

for(( num=start; num<=end; num++)); do 
   if [ $num -lt 2 ]; then 
      continue;
   fi

   is_prime=1
    for(( i=2; i*i<=num; i++ )); do 
     if [ $(( num %i )) -eq 0 ]; then
       is_prime=0
       break
     fi
    done
    
   if [ $is_prime -eq 1 ]; then
     ((++count))
    fi
done

echo "Number of prime no in range : $count"
