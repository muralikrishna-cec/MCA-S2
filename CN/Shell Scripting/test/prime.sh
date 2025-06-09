#!/bin/bash

read -p "Enter a starting and and ending range " start end
count=0

for (( num= $start; num <= $end ; num++ )) ; do
   if ((num <2 )) ;then
     continue;
   fi

   is_prime=1

   for ((i=2;i*i<=num;i++)) ; do
       if (( num % i == 0 )) ; then
       is_prime=0
    fi
   done
 if ((is_prime ==1 )) ;then
    ((count++))  

 fi
 done

 echo "count : $count "    

