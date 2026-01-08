#!/bin/bash

echo "enter the number to check even or odd"
read num

if (( num%2 == 0 ));then
    echo "The number is even"
else
    echo "The number is odd"
fi