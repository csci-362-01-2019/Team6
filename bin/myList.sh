#!/bin/bash

# create a file to write to
DIRECTORY_FILE="directory.html"

echo "<!DOCTYPE html>" >> $DIRECTORY_FILE
echo "<html>" >> $DIRECTORY_FILE
echo "<body>" >> $DIRECTORY_FILE
echo "<p>" >> $DIRECTORY_FILE


# create an array with all the filer/dir inside ~/myDir
arr=$( ls )

# iterate through the array to cycle through files
for ((i=0; i<${#arr[@]}; i++)); do
    echo "${arr[$i]}" >> "<br>" >> $DIRECTORY_FILE
done 

echo "</p>" >> $DIRECTORY_FILE
echo "</body>" >> $DIRECTORY_FILE
echo "</html>" >> $DIRECTORY_FILE
