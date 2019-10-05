#!/bin/bash

#compile/execute instructions
## chmod +x runAllTests.sh
## ./runAllTests.sh

#input variables
TestID=""
Requirement=""
Component=""
Method=""
TestFile=""
Inputs=""

#helper variables
JavaFile=""
OutputFile=""
Oracle=""
TestStatus=""

#counter variable
declare -i x=1

#compile OpenMRS dependencies
#TODO: pom script

#go to test file directory
cd ..
cd "testCases"

#take in file
InputFile="testCase1.txt" #TODO: Loop through all test cases

#read file
while IFS= read -r line
do
	#case statement to take file input
	case $x in
		#take in TestID
		1)
			TestID="$line"
			;;
		2)
			Requirement="$line"
			;;
		3)
			Component="$line"
			;;
		4)
			Method="$line"
			;;
		5)
			TestFile="$line"
			;;
		6)
			Inputs="$line"
			;;
		*)
			echo "Error"
			;;
	esac

	#iterate counter variable
	let x=$x+1

done < "$InputFile"

#!echo test
echo "Input File Read:"
echo $TestID
echo $Requirement
echo $Component
echo $Method
echo $TestFile
echo $Inputs

#format needed files
JavaFile="${TestFile}.java"
OutputFile="${TestID}results.txt"
Oracle="${TestID}Oracle.txt"

#go to executable directory
cd ..
cd "testCasesExecutables"

#compile and execute
javac $JavaFile
java $TestFile $Inputs

#go to home directory
cd ..

#compare output to oracle
if cmp -s "temp/${OutputFile}" "oracles/${Oracle}"; then
	TestStatus="Success"
else
	TestStatus="Failure"
fi
echo $TestStatus

#go to report directory
cd "reports"

#create/write to report
echo "${TestID} Result: ${TestStatus}" >> "testReport.txt"

#TODO:
## Iterate through multiple files
## Compile needed OpenMRS packages
## clear temp folder before run
## remove or rename old report file before another run
## {Driver File} write to temp
