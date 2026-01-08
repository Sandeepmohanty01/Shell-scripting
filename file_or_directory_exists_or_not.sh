#!/bin/bash

read -p "Enter the path of file or directory: " path

if [ -e "$path" ]; then
    if [ -f "$path" ]; then
        echo "It is a file."
    elif [-d "$path" ]; then
        echo "it is a directory."
    else
        echo "It exists but neither it is a directory nor a file"
    fi
else
    echo "Path does not exists"
fi
