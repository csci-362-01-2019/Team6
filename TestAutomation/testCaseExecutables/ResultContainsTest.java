//title: ResultContainsTest.java
//desc: This java driver tests the contains() method for the Result object, which sees if 
//a result (double) is contained within a list of doubles that are the "results"
//--
//authors: Alan Arsiniega, Cameron Reuschel, and Jacob Ballou
//course: Software Engineering CS362
//date: 2019-11-19
//notes: Driver is moved and compiled inside of the OpenMRS-core directory
//usage: To be called by the runAllTests.sh script

package org.openmrs.logic.result;

import java.util.List;
import java.util.ArrayList;
import java.util.Date; 
import org.openmrs.logic.result.Result;

public class ResultContainsTest {

	public static void main(String[] args) {
		
		List<Result> rct1 = new ArrayList<Result>();
		
		rct1.add(new Result(Double.parseDouble(args[0])));
		rct1.add(new Result(Double.parseDouble(args[1])));
		rct1.add(new Result(Double.parseDouble(args[2])));
		
		System.out.println(rct1.contains(new Result(Double.parseDouble(args[3]))));
		
	}

}
