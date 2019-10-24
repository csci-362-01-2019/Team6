package org.openmrs.util;

public class DoubleRangeTest {
	
	public static void main(String[] args) {
		
		DoubleRange dr = new DoubleRange();
		
		// should be null
		System.out.println(dr.getHigh());
		
		dr.setLow(new Double(7.8));
		
		// should be 7.8
		System.out.println(dr.getLow());
	}
}
