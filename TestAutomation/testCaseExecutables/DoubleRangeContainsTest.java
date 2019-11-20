//title: DoubleRangeContainsTest.java
//desc: This java driver tests the contains() method for the double range object
//authors: Alan Arsiniega, Cameron Reuschel, and Jacob Ballou
//course: Software Engineering CS362
//date: 2019-11-19
//notes: Driver is moved and compiled inside of the OpenMRS-core directory
//usage: To be called by the runAllTests.sh script

package org.openmrs.util;

import org.openmrs.util.DoubleRange;

public class DoubleRangeContainsTest {
	
	public static void main(String[] args) {
		Double d1 = Double.parseDouble(args[0]);
		Double d2 = Double.parseDouble(args[1]);
		
		DoubleRange dr = new DoubleRange(d1, d2);
		
		Double d3 = Double.parseDouble(args[2]);
		System.out.println(dr.contains(d3));
	}
}
