#!/bin/bash

read -p "Enter a number " num1
read -p "Enter a number " num2

sum=$((num1+num2))
echo "SUM : $sum"

sub=$(expr $num1 - $num2 )
echo "SUB : $sub"

mul=$((num1*num2))
echo "MUL : $mul"

div=$((num1/num2))
echo "DIV : $div"

