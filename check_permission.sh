#!/bin/bash

read -p "Enter the path" path

if [ ! -e "$path"]; then
    echo "File or directory do not exist"
    exit 1
fi

[-r "$path" ] && echo "Read Permission: Yes" || echo "Read Permission: No"
[-w "$path" ] && echo "Write Permission: Yes" || echo "Write Permission: No"
[-x "$path" ] && echo "Execute Permission: Yes" || echo "Execute Permission: No"
