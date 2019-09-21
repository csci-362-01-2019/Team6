#!/bin/bash
# conceptual test script
input="input.txt"
while IFS= read -r line
do
        echo "$line"
        java Echo $line
done < "$input"
