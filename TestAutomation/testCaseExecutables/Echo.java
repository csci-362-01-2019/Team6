// Test class

import java.io.*;

public class Echo{
	public static void main(String[] args){
		//variables
		int x = Integer.parseInt(args[0]);
		int y = Integer.parseInt(args[1]);
		int z = 0;

		//function
		z = x + y;

		//print
		System.out.printf("%d\n", z);

	}
}
