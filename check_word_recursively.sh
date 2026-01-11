#!/bin/bash

read -p "Enter the directory: " dir
read -p "Enter the file: " file

if [ ! -e "$dir"]; then
    echo "dir does not exist"
    exit 1
fi

grep -rn "$word" "$dir"

