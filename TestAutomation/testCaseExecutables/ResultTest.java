package org.openmrs.logic.result;

import org.openmrs.logic.result.Result;

//from /Team6/TestAutomation/testCaseExecutables
// javac -cp ../openmrs-core/api/target/classes -d ../openmrs-core/api/target/classes/ ResultTest.java
// java -cp ../openmrs-core/api/target/classes/ org.openmrs.logic.result.ResultTest
public class ResultTest {
	
	public static void main(String[] args) {
		System.out.println("WTF");
		
		Result r1 = new Result(99.9);
		Result r2 = new Result("shit");
		System.out.println(r1.getDatatype());
		System.out.println(r1);
		System.out.println(r2);
		System.out.println("WTF");
		
	}
	
}
