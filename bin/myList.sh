#!/bin/bash

# create an array with all the filer/dir inside ~/myDir
arr=$(ls -a)

for f in "${arr[@]}"; do
   echo "$f"
done
