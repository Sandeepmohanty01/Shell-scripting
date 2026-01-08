#!/bin/bash

echo "Enter the number to be checked"
read num

if (( num > 0)); then
        echo "$num is positive"
elif (( num == 0 )); then
        echo "$num is Zero"
else
        echo "$num is negative"
fi