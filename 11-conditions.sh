#!/bin/bash
num=$1
if [ sum(($num % 2)) -eq 0 ]; then
    echo "given number $num is even"
else
    echo "given number $num is odd"