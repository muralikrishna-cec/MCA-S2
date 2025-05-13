#!/bin/bash

getfile() {
  read -p "Enter The file name : " filename
  if [ ! -f "$filename" ]; then 
     echo "File not exist..." 
     exit 1
  fi   
}

while true
do
  echo -e "\n1 -> Convert UPPER to lower"
  echo "2 -> Count lines"
  echo "3 -> Exit"
  read -p " Enter your choice..." ch
  
  case "$ch" in
  1) 
     getfile
     tr '[:upper:]' '[:lower:]' < "$filename"
  ;;
  2)
    getfile
    echo " No: of Lines : $(wc -l <"$filename")"
    echo " No: of Words : $(wc -w <"$filename")"
    echo " No: of Characters : $(wc -m <"$filename")"
  ;;   
  3)
    echo "Exiting....."
    exit 
  ;;  
  *)
     echo "Invalid choice.."  
  ;;   
 esac 
done

# wc flags quick reference:
# -l  # lines
# -w  # words
# -m  # characters
# -c  # bytes
# -L  # maxlinelength