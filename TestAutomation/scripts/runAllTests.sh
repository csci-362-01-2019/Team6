#!/bin/bash

# compile by: chmod +x runAllTests.sh
# run: ./runAllTests.sh

# variables
#TestID=""
#Requirement=""
#Component=""
#Method=""
#Inputs=""
#Outputs=""

# create array of test file names
testfiles=$( ls ) # this is a temporary test; I've also tried "~/*"

# loop through test files
for i in "${testfiles[@]}" do # for some reason, this loop is failing to work

        #retrieve TestID
        TestID="$(grep 'Test ID:' $i)"

        #retrieve Requirement

        #retrieve Component

        #retrieve Method

        #grab all inputs
        #TODO: This will need to be done with IFS=read -r $line

        #grab all outputs
        #TODO: This will need to be done with IFS=read -r $line

        #compile testing executable (ie Java driver)

        #execute Java file w/ command line arguments

        #compare output with oracle

        #write to output file

done
