#!/bin/bash

# create an array with all the filer/dir inside ~/myDir
arr=(~/*)

for f in "${arr[@]}"; do
   echo "$f"
done
