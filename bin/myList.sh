#!/bin/bash

# create a file to write to
filename="toplevel.html"

{
echo "<!DOCTYPE html>" 
echo "<html>" 
echo "<body>"
echo "<p>"

# iterate through the array of ls words 
for i in $( ls ); do
    if [ $i != "${filename}" ];
	then
    	    echo $i 
    	    echo "<br>"
    
    fi;
done

echo "</p>"
echo "</body>"
echo "</html>"
} > "${filename}" 
