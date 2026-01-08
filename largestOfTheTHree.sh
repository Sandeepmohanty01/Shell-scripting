#!/bin/bash

echo "Enter the three number"
read num1 num2 num3

if (( num1 >= num2 )) && (( num1 >= num3 )); then
        echo "num1 is greatest"
elif (( num2 >= num1 )) && (( num2 >= num3 )); then
        echo "num2 is greatest"
else
        echo "num3 is greatest"
fi