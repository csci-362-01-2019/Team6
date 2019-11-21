# Team6 - How to inject faults and build instructions

Tools needed:
Java/OpenJDK 1.8.0_222 
Apache Maven 3.6.0
Git version 2.17.1

Pull down the repo to a linux/unix box:
$ git clone https://github.com/csci-362-01-2019/Team6.git

How to build with Maven:
$ cd Team6/TestAutomation/openmrs-core/api
$ mvn clean
$ mvn compile

How to run all tests
$ cd ../..
$ ./scripts/runAllTests.sh

How to inject faults:
$ cd ../..
$ vi openmrs-core/api/src/main/java/org/openmrs/util/DoubleRange.java

Comment and the uncomment 2 boolean instance variables here:

```java       
        /**
         *  FAULT INJECTION BELOW
         */

        private boolean closedLow = true; //TODO: add setters and getters for these
        // To insert fault injection uncomment line below and comment line above!
        //private boolean closedLow = false;

        private boolean closedHigh = false;
        // To insert fault injection uncomment line below and comment line above!
       //private boolean closedHigh = true;

        /**
         *  FAULT INJECTION END
         */
```

Now we just need to build and run tests again:
$ cd /openmrs-core/api
$ mvn clean
$ mvn compile
$ cd ../..
$ ./scripts/runAllTests.sh

We should now see 5 tests fail!  Please let us know if there are any questions or concerns, thank you!
