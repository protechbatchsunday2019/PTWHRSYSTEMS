package drivehrsystem;

import hrsystem.Employee;
import hrsystem.HR;

public class TestHr {

	
	public static void main(String args[]) {

		Employee e =new Employee();

		// Test 1 : An HR mr tom can calculate salary for an eemployee 
		HR tom = new HR();
		e = tom.getEmployeeDetails();		
		tom.calculateGrossPay(e); 
		tom.printPayChek(e);
		
	}
	
}
