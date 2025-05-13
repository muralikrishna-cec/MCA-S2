#!/bin/bash

read -p "Enter the filename " filename
if [ ! -f $filename ];then
  echo "File Not exisits"
  exit1
fi

while  read -r line  
do
  if [ -z "$line" ]; then
    echo " "
  else 
    echo "$line"
  fi    
done <"$filename"

# < filename.txt connects the file to the loop.

#read -r line # read one line at a time into variable 'line' || read interprets backslashes (\) as escape characters.