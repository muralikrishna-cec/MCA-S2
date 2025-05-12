#!/bin/bash

read -p "Enter the state : " state
state_lower=$(echo "$state" | tr 'A-Z' 'a-z')

case "$state_lower" in 
"andhrapradesh") echo "telugu"
;;
"assam") echo "Assami"
;;
"bihar" | "himachal pradesh") echo "hindi"
;;
"kerala" | "lakshwadeep") echo "malayalam"
;;
"tamilnadu") echo "tamil"
;;
*)echo "Unknown"
;;
esac