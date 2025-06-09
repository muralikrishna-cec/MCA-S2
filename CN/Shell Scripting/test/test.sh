#!/bin/bash
read -p "Enter State" state

state_lower=$(echo $state | tr '[:upper:]' '[:lower:]')

case "$state_lower" in
"andhra pradesh") echo "Language is Telegu"
;;
"kerala" | "lakshwadeep" ) echo "malayalam"
;;

*) echo "invalid choiche" ...

esac