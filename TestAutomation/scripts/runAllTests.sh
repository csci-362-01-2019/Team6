#!/bin/bash

#compile/execute instructions
## chmod +x runAllTests.sh
## ./runAllTests.sh

#input variables
InputFile=""
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

#remove temp files
cd ..
rm -rf temp
mkdir temp

#begin report
#TODO: go to report directory and begin
cd "reports"
echo "Test Report" > "testReport.html"

#go to test file directory
cd ..
cd "testCases"

#loop through all files
caseFiles=$( ls * )
for i in $caseFiles ; do

	#take in file
	InputFile="$i"

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

	done < "$i"

	#reset counter variable
	let x=1

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
	cd "testCaseExecutables"

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

	# return to test case directory for next test
	cd ..
	cd "testCases"
done

## TODO: display html report to browser

#TODO:
## {Driver File} write to temp
