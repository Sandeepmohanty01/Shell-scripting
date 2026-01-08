#!/bin/bash

echo "Enter the number"
read num

if [[ $num =~ ^-?[0-9]+$ ]]; then
        echo "Valid number: $num"
else
        echo "Invalid input! Please enter the valid number"
fi