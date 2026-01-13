#!/bin/bash

read -p "Enter the file which you want to anylyse" file

if [ ! -f "$file" ]; then
        echo "file does not exist"
        exit 1
fi


total_lines=$(wc -l < "$file")
error_lines=$(grep -c "ERROR" "$file")
warning_lines=$(grep -c "WARNING" "$file")

echo "Log File Anaylyser"
echo "--------------------"
echo "$total_lines"
echo "$error_lines"
echo "$warning_lines"