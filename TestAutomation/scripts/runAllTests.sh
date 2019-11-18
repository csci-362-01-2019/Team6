#!/bin/bash

#compile/execute instructions
cd scripts
chmod u+x runAllTests.sh
chmod u+x reportFormat.sh 
cd ..

#Enables script to be run from TestAutomation dir
cd scripts

#input variables
InputFile=""
TestID=""
Requirement=""
Component=""
Method=""
TestFile=""
Location=""
Inputs=""

#helper variables
JavaFile="" # (MODIFIED for running in openmrs-core)
OutputFile=""
Output=""
OracleFile=""
Oracle=""
TestStatus=""

#counter variable
declare -i x=1

#compile OpenMRS dependencies
cd ..
cd openmrs-core/api

#remove temp files
cd ../..
rm -rf temp
mkdir temp

#begin report
ReportFile="testReport.html"
cd scripts
./reportFormat.sh

#go to test file directory
cd ..
cd "testCases"

# echo test start
echo "TEST BEGIN"

#loop through all files
for i in test{1..5}.txt; do
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
				Location="$line"
				;;
			7)
				Inputs="$line"
				;;
                        8) 
                                iDisplay="$line"
                                ;;
			*)
				;;
		esac

		#iterate counter variable
		let x=$x+1

	done < "$i"

	#reset counter variable
	let x=1

	#!echo test
	echo "==========================="
	echo "Test ${TestID} now being run"

	#format needed files (MODIFID: for run from openmrs targe)
	JavaFile="${TestFile}.java"
	OutputFile="${TestID}results.txt"
	OracleFile="${TestID}Oracle.txt"

	#go to executable directory
	cd ../testCaseExecutables

	#compile, execute, and retrieve output
	javac -cp ../openmrs-core/api/target/classes -d ../openmrs-core/api/target/classes/ ${JavaFile}
	Output="$(java -cp ../openmrs-core/api/target/classes/ $Location $Inputs)"

	#go to home directory and write output file
	cd ../temp
	echo "${Output}" > "${OutputFile}"
	cd ..

	#compare output to oracle
	if cmp -s "temp/${OutputFile}" "oracles/${OracleFile}"; then
		TestStatus="Pass"
	else
		TestStatus="Failure"
	fi
	echo "Test Complete"
	echo "Test ${TestID} status: ${TestStatus}"

	#retrieve oracle data
	cd oracles
	Oracle=$(<$OracleFile)

	#go to report directory
	cd ../reports

	#create/write to report
	{
	echo "  <tr>"
	echo "    <td style=\"font-size:1.0vw; text-decoration:underline\">${TestID}</th>"
	echo "    <td style=\"font-size:1.1vw; width:400px\">${Requirement}</th>"
	echo "    <td style=\"font-size:0.8vw\">${Component}</th>"
	echo "    <td style=\"font-size:1.0vw; overflow: hidden;text-overflow:ellipsis;white-space:nowrap\">${Method}</th>"
	echo "    <td style=\"font-size:0.9vw\">${Inputs}</th>"
	echo "    <td style=\"font-size:0.9vw\">${iDisplay}</th>"
	echo "    <td style=\"font-size:0.9vw\">${Output}</th>"
	echo "    <td style=\"font-size:0.9vw\">${Oracle}</th>"
	echo "    <td style=\"font-size:0.9vw\">${TestStatus}</th>"
	echo "  </tr>"
	} >> "${ReportFile}"

	# return to test case directory for next test
	cd ..
	cd "testCases"
done

#echo test end
echo "==========================="
echo "TESTING COMPLETE"

#finalize report
cd ../reports
{
echo "</table>"
echo "</body>"
echo "</html>"
} >> "${ReportFile}"
FileCall="file://`pwd`/${ReportFile}"

#call report to browser
xdg-open $FileCall
