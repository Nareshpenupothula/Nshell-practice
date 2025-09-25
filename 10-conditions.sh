#!/bin/bash

number1=$1
number2=$2


if [ $number1 -lt $number2 ]; then
    echo "number $number1 is lessthan $number2"
    echo "sum: ${$number1+$number2}"
elif [ $number -eq 10 ]; then
    echo "numbers is equal"

else
    echo "number $number1 is greaterthan $number2"
    echo "sub: ${$number2-$number1}"

fi
