#!/bin/bash

number1=$1
number2=$2


if [ $number1 -lt $number2 ]; then
    echo "number $number1 is lessthan $number2"
    sum=$(($number1+$number2))
    echo "sum is : ${sum}"
elif [ $number1 -eq $number2 ]; then
    echo "numbers are equal"
else
    echo "number $number1 is greaterthan $number2"
    sub=$(($number1-$number2))
    echo "sub is : ${sub}"
fi
