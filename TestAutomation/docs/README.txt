### Openmrs Testing ###

#D3 - Test Case in the same program structure#

Tools needed:
Java/OpenJDK 1.8.0_222 
Apache Maven 3.6.0

How to build with Maven:
Go to: Team6/TestAutomation/openmrs-core/api
$ mvn clean
$ mvn compile

To run test file from api folder (same place where we just built with maven)
$ java -cp target/classes/ org.openmrs.util.DoubleRangeTest 1 2 3

DoubleRangeTest is the class file being tested.  

Feel free to add another java file like 
DoubleRangeTestJacob.java or DoubleRangeTestCameron.java 
These would go in the src folder where the code is, I put DoubleRangeTest in

Team6/TestAutomation/openmrs-core/api/src/main/java/org/openmrs/util

I have updated the code to accept 3 doubles and call the contains method:
$ java -cp target/classes/ org.openmrs.util.DoubleRangeTest 1000.02 9999.1 3000
$ true

Returns true because 3000 is in the range between 1000.2 9999.1

$ java -cp target/classes/ org.openmrs.util.DoubleRangeTest 1000.02 9999.1 9999.2
$ false

Returns false because 9999.2 isn't in the range it's .1 greater

##D4 - Test case outside the same program structure#

If we are in the Team6/TestAutomation folder and we've created a folder testCaseExecutables/
and furthermore we want to put our program in it's own package such  edu/cofc the program will 
need to state this in the very first line of code as per java rules: package edu.cofc

Also, we will need the correct import statement right after: import org.openmrs.util.DoubleRange;

$ javac -cp openmrs-core/api/target/classes testCaseExecutables/edu/cofc/DoubleRangeTest.java

Will work from Team6/TestAutomation, and to execute

$ 
