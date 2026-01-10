#!/bin/bash

read -p "Enter the path of the directory" dir

if [ ! -e "$dir"]; then
    echo "path does not exist"
    exit 1
fi

count=$(find "$dir" -maxdepth 1 -type f -executable | wc -l )
echo "the count of executable files are: $count"