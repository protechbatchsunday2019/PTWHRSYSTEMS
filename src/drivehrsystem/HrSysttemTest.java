package drivehrsystem;

import java.util.Scanner;

import hrsystem.Employee;
import hrsystem.HR;

public class HrSysttemTest {

	public static void main(String[] args) {
		
		
		// Test 1: An HR Can Calculate gross payment of an employee 
		
		HR hrSmith = new HR();
		Employee empMrA = new Employee();

		
		
	//	empMrA=hrSmith.getEmployeeDetails();
	//	hrSmith.calculateGrossPay(empMrA);
	//	hrSmith.printPayChek(empMrA);

		
		// Test 2 : Hr can Calculate as many employees salay he want But Hr can reach up to 5 
		
		// Loop ( circale tthroough an activity(ccode) untill it met some contio))
		
		do {
			empMrA=hrSmith.getEmployeeDetails();
			hrSmith.calculateGrossPay(empMrA);
			hrSmith.printPayChek(empMrA);
		} while(hrSmith.doYouWantToContinue());

		
		
	}

}
