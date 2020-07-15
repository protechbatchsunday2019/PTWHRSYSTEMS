package drivehrsystem;

import hrsystem.Employee;
import hrsystem.HR;

public class TestHrV2 {

	public static void main(String[] args) {
		
		
		// Input Validation Should taken Care by the HR System.... 
		
		// Rule 1. Hourly rate should bee between 15 to 80
		// Rule 2. Total Should be between 0 to 40
		// Rule 3. A Name Cannot Contain Number at the begging 
		
		// Rule 4. In Any case system should not crash 
		
		
		HR hrSmith = new HR();
		Employee empMrA = new Employee();

		do {
			empMrA=hrSmith.getEmployeeDetails();
			hrSmith.calculateGrossPay(empMrA);
			hrSmith.printPayChek(empMrA);
		} while(hrSmith.doYouWantToContinue());

	}

}
