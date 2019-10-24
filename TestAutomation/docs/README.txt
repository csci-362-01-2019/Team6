Openmrs Testing

Tools needed:
Java/OpenJDK 1.8.0_222 
Apache Maven 3.6.0

How to build with Maven:
Go to: Team6/TestAutomation/openmrs-core/api
$ mvn clean
$ mvn compile

To run test file from api folder (same place where we just built with maven)
$ java -cp target/classes/ org.openmrs.util.DoubleRangeTest

DoubleRangeTest is the class file being tested.  

Feel free to add another java file like 
DoubleRangeTestJacob.java or DoubleRangeTestCameron.java 
These would go in the src folder where the code is, I put DoubleRangeTest in

Team6/TestAutomation/openmrs-core/api/src/main/java/org/openmrs/util

