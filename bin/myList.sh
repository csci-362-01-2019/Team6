#!/bin/bash

# create a file to write to
# DIRECTORY_FILE="directory.html"

# create an array with all the filer/dir inside ~/myDir
arr=$( ls )

# iterate through the array to cycle through files
for ((i=0; i<${#arr[@]}; i++)); do
    echo "${arr[$i]}" # > DIRECTORY_FILE
done
