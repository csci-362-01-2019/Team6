//title: ResultContainsTest.java
//desc: This java driver tests the gt() method, gt meaning "greater than". It checks if a number is greater
//than all values within the number array in the Result object 
//--
//authors: Alan Arsiniega, Cameron Reuschel, and Jacob Ballou
//course: Software Engineering CS362
//date: 2019-11-19
//notes: Driver is moved and compiled inside of the OpenMRS-core directory;
//warning: the result object appears to be bugged, and sometimes has issues with working with
//multiple elements
//--
//usage: To be called by the runAllTests.sh script



package org.openmrs.logic.result;

import java.util.List;
import java.util.ArrayList;
import java.util.Date; 
import org.openmrs.logic.result.Result;
import org.openmrs.logic.result.EmptyResult;

public class ResultGtTest {

	public static void main(String[] args) {
		
		Result emptyResult = new EmptyResult();
		
		Result rgt = new Result(Double.parseDouble(args[0]));
		Integer int1 = Integer.parseInt(args[1]);
		
		if (rgt.gt(int1) instanceof EmptyResult)
			System.out.println("empty");
		else 
			System.out.println(rgt.gt(int1));
	}

}
