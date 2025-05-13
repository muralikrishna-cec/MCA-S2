#!/bin/bash

og_uname="admin"
og_pass="pass"

read -p "Enter the username " uname
read -s -p "Enter the password " pass

if [[ $og_uname == $uname  &&  $og_pass == $pass ]]; then
   echo -e "\n login sucessfull !"
else
   echo -e "\n Invalid Credentials ...!"   
fi   

#-s with read:
#Hides the password input (security feature).

#[[ ... ]] vs [ ... ]:
#[[ ... ]] is more powerful and safer for string comparison in Bash scripts.

#echo -e to enable escape sequences: