#!/bin/bash

read -p "enter the directory" dir

if [ ! -d "$dir" ]; then
    mkdir "$dir"
    echo "'$dir' created successfully!!"    
else
    echo "'$dir' already exists"
fi