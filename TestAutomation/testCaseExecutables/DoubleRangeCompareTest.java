//title: ResultContainsTest.java
//desc: This java driver tests the compare() method, comparing two DoubleRange objects (which contain
//integers of the upper and bottom bounds of the range).
//--
//authors: Alan Arsiniega, Cameron Reuschel, and Jacob Ballou
//course: Software Engineering CS362
//date: 2019-11-19
//notes: Driver is moved and compiled inside of the OpenMRS-core directory
//usage: To be called by the runAllTests.sh script

package org.openmrs.util;

import org.openmrs.util.DoubleRange;

public class DoubleRangeCompareTest {
	
	/**
	 * first sorts according to low-bound (ascending) then according to high-bound (descending)
	 * @should return plus 1 if this low is greater than other low
	 * @should return minus one if this low is lower than other low
	 * @should return plus one if both lows are equal but other high is greater than this high
	 * @should return minus one if both lows are equal but other high is less than this high
	 * @should return zero if both lows and both highs are equal
	 * @should return 1 if this range is wider than other range
	 **/
	public static void main(String[] args) {
		Double d1 = Double.parseDouble(args[0]);
		Double d2 = Double.parseDouble(args[1]);
		
		DoubleRange dr1 = new DoubleRange(d1, d2);
		
		Double d3 = Double.parseDouble(args[2]);
		Double d4 = Double.parseDouble(args[3]);
		
		DoubleRange dr2 = new DoubleRange(d3, d4);
		
		System.out.println(dr1.compareTo(dr2));
	}
}
