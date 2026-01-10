# Write a Bash script that:

# Takes a file name as input

# Searches for a given word in the file

# Prints:

# Number of matching lines

# The matching lines themselves

#!/bin/bash

read -p "Enter the file name: " file
read -p "Enter the word to be searched: " word

if [ ! -f "$file" ]; then
    echo "File does not exist"
    exit 1
fi

echo "Matching line"
grep "$word" "$file"

count=$(grep -c "$word" "$file")
echo "The count of the word is : $count"
