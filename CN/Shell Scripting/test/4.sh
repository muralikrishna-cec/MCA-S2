#!/bin/bash

read -p "Enter a number : " num1
read -p "Enter a number : " num2

sum=$((num1+num2))
sub=$(expr $num1 - $num2 )
#mul=$(expr $num1 \* $num2 )
mul=$((num1*num2))
div=$((num1/num2))

echo "Sum : $sum"
echo "Sub : $sub"
echo "Mul : $mul"
echo "Div : $div"