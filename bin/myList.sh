#!/bin/bash

# create a file to write to
{
echo "<!DOCTYPE html>" 
echo "<html>" 
echo "<body>"
echo "<p>"

# iterate through the array of ls words 
for i in $( ls ); do
    echo $i 
    echo "<br>"
done 

echo "</p>"
echo "</body>"
echo "</html>"
} > toplevel.html 
