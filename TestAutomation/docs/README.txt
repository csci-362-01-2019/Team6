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
We can create test drivers here by following the same package rules as the classes we intend
to test.  In this case:   

package org.openmrs.util.DoubleRange

It's good to note that depending on our package java will put the class file into that same 
structure following a 

$ javac -d [../classes/]

We also need the correct import statement right after the package statment in our code so: 

import org.openmrs.util.DoubleRange;

Now to compile, cd to the testCaseExecutables/

$ cd testCaseExecutables
$ javac -cp ../openmrs-core/api/target/classes -d ../openmrs-core/api/target/classes/ DoubleRangeTest.java

The class file has been placed in the correct location, now to execute:

$ java -cp ../openmrs-core/api/target/classes/ org.openmrs.util.DoubleRangeTest 1 2 3

