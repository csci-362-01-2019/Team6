package org.openmrs.util;

import org.openmrs.util.PersonByNameComparator;

import org.openmrs.Person;

import org.openmrs.PersonName;

import java.util.*;

public class PersonByNameComparatorTest {

	public static void main(String[] args) {

		//set person variables
		Person person1 = new Person();
		Person person2 = new Person();

		//set people names
		/* create person name objects */
		PersonName person1name = new PersonName(args[0], args[1], args[2]);
		PersonName person2name = new PersonName(args[3], args[4], args[5]);
		
		/* create person name sets */
		Set<PersonName> person1nameList = new TreeSet<PersonName>();
		Set<PersonName> person2nameList = new TreeSet<PersonName>();
		
		/* add person names to sets */
		person1nameList.add(person1name);
		person2nameList.add(person2name); 

		/* add sets to associated Person objects */
		person1.setNames(person1nameList);
		person2.setNames(person2nameList);
		
		//call comparison
		int result = PersonByNameComparator.comparePersonsByName(person1, person2);
		int oracle = -7;

		if(result != 0){
			oracle = 0;
		}
		else{
			oracle = 1;
		}

		//output result
		System.out.println(oracle);
	}
}
