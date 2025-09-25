#!/bin/bash

number=$1

if [ $number -lt 10 ]; then
    echo "number $number is lessthan 10"
elif [ $number -eq 10 ]; then
    echo "number $number is equal"

else
    echo "number $number is greaterthan or eqaul to 10"
fi
