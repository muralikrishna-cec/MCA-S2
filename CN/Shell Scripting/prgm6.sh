#!/bin/bash

read -p "Enter the state : " state
state_lower=$(echo "$state" | tr 'A-Z' 'a-z') # Convert to lowercase

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

# ✅ Use tr '[:upper:]' '[:lower:]' instead of 'A-Z' 'a-z' (more locale-safe):