package org.openmrs.util;

public class DoubleRangeTest {
	
	public static void main(String[] args) {
		Double d1 = Double.parseDouble(args[0]);
		Double d2 = Double.parseDouble(args[1]);
		Double d3 = Double.parseDouble(args[2]);
		
		DoubleRange dr = new DoubleRange(d1, d2);
		System.out.println(dr.contains(d3));
	}
}
