#!/bin/bash

read -p "enter the directory: " dir

if [ ! -d "$dir" ]; then
    echo "Directory does not exists"
    exit 1
fi

echo "Deleted file: "

find "$dir" -maxdepth 1 -type f -mtime +7 -print -delete 