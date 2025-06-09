#!/bin/bash

og_uname="User"
og_pass="1234"

read -p "Enter the username : " uname
read -p "Enter the password : " pass

if [[ "$og_uname" = "$uname"  && $og_pass -eq $pass ]] ; then
  echo "Login Sucessful..."
else
  echo "Invalid credentails"  
fi  
