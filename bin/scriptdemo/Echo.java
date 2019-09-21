// Test class

import java.io.*;

public class Echo{
        public static void main(String[] args){
                //variables
                int x = Integer.parseInt(args[0]);
                int y = Integer.parseInt(args[1]);
                int z = 0;
                int a = Integer.parseInt(args[2]);

                //function
                z = x + y;

                //return value
                if(z == a){
                        System.out.printf("Success%n");
                }
                else{
                        System.out.printf("Failure%n");
                }

        }
}
