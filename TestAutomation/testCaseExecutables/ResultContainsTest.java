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
