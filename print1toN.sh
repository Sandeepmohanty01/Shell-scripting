#!/bin/bash

echo "Enter the number till where you want to print"
read num

for (( i=1; i<=num; i++)); do
    echo $i
done
