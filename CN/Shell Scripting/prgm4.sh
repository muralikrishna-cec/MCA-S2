#!/bin/bash

og_uname="admin"
og_pass="pass"

read -p "Enter the username " uname
read -p "Enter the password " pass

if [ $og_uname == $uname ] && [ $og_pass == $pass ]; then
   echo "login sucessfull !"
else
   echo "Invalid Credentials ...!"   
fi   