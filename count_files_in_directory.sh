#!/bin/bash

read -p "Enter the directory path :" dir

if [[ ! -d "$dir"  ]]; then
        echo "Invalid Directory"
        exit 1
fi

count=$(find "$dir" -type f | wc -l)
echo "Number of files in the directory: $count"