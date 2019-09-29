#!/bin/bash

# compile by: chmod +x runAllTests.sh
# run: ./runAllTests.sh

# variables
TestID="" #ie. DrugObjectTest
Requirement=""  # ie. does something
Component="" # ie. Drug Organizer
Method="" # ie. labelDrug()
TestFile="" # ie. Drug.java
Inputs="" # ie. Benadryl 20 9/14/23
Outputs="" # ie. Safe
Oracle="" # compare with Outputs
FileName="" # File to search for info.

# create array of test file names
cd .. 
cd "testCases"
testfiles=$( ls * )

# loop through test files
for i in "${testfiles[@]}" do # I keep getting an unexpected token
        #get file name
        FileName="$i"

        #retrieve TestID
        TestID="$(grep 'Test ID:' $i)"

        #retrieve Requirement

        #retrieve Component

        #retrieve Method

        #grab all inputs
        #TODO: This will need to be done with IFS=read -r $line or grep

        #grab all outputs

        #compile testing executable (ie Java driver)
        cd..
        cd "testCasesExecutables"
        javac $TestFile
        # java (format to run the object)
        
        # execute Java file w/ command line arguments
        ##java testfile.class
        
        # retrieve output from folder
        cd ..
        cd "temp"
        ##read from output file and compare to 
        
        # compare output with oracle
        cd ..
        cd "oracles"
        ##read from oracle file
        ##compare and write something to the reports
        
        # write a report
        cd .. 
        cd "reports"
        ##write a report
done
