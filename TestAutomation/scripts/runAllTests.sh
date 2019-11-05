#!/bin/bash

#compile/execute instructions
## chmod u+x runAllTests.sh
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
#JavaFile="" (MODIFIED for running in openmrs-core)
ExecuteFile="" # temp variable for executing
OutputFile=""
Output=""
Oracle=""
TestStatus=""

#counter variable
declare -i x=1

#compile OpenMRS dependencies
cd ..
cd openmrs-core/api
#mvn clean
#mvn compile

#remove temp files
cd ../..
rm -rf temp
mkdir temp

#begin report
#TODO: go to report directory and begin
cd "reports"
echo "Test Report" > "testReport.html"

#go to test file directory
cd ..
cd "testCases"

# echo test start
echo "TEST BEGIN"

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
	echo "==========================="
	echo "Test Being Run:"
	echo $TestID
	echo $Requirement
	echo $Component
	echo $Method
	echo $TestFile
	echo $Inputs

	#format needed files (MODIFID: for run from openmrs targe)
	#JavaFile="${TestFile}.java"
	ExecuteFile="org.openmrs.util.${TestFile}"
	OutputFile="${TestID}results.txt"
	Oracle="${TestID}Oracle.txt"

	#go to executable directory
	#cd ..
	#cd "testCaseExecutables"

	#compile and execute
	#javac $JavaFile
	#java $TestFile $Inputs

	## For executing in openmrs-core/api directory
	cd ..
	cd openmrs-core/api
	Output="$(java -cp target/classes $ExecuteFile $Inputs)"

	#go to home directory and write output file
	cd ../..
	cd temp
	echo "${Output}" > "${OutputFile}"
	cd ..

	#compare output to oracle
	if cmp -s "temp/${OutputFile}" "oracles/${Oracle}"; then
		TestStatus="Success"
	else
		TestStatus="Failure"
	fi
	echo $TestStatus
	echo "==========================="

	#go to report directory
	cd "reports"

	#create/write to report
	echo "${TestID} Result: ${TestStatus}" >> "testReport.html"

	# return to test case directory for next test
	cd ..
	cd "testCases"
done

# echo test end
echo "TEST COMPLETE"

## TODO: display html report to browser

#TODO:
## {Driver File} write to temp
