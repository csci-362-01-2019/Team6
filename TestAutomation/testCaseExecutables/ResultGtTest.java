package org.openmrs.logic.result;

import java.util.List;
import java.util.ArrayList;
import java.util.Date; 
import org.openmrs.logic.result.Result;

public class ResultGtTest {

	public static void main(String[] args) {
		Result rgt = new Result(Double.parseDouble(args[0]));
		Integer int1 = Integer.parseInt(args[1]);
		System.out.println(rgt.gt(int1));
	}

}
