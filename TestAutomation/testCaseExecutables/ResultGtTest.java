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
			System.out.println("null");
		else 
			System.out.println(rgt.gt(int1));
	}

}
