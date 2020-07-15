package drivehrsystem;

import hrsystem.Employee;
import hrsystem.HR;

public class TestHrV3 {

	public static void main(String[] args) {
		
		
		// HR Get Both Grooss & net Pay 
		
		HR hrSmith = new HR();
		Employee empMrA = new Employee();

		do {
			// EMP A will be Fill what is comming 
			empMrA=hrSmith.getEmployeeDetails(); // Getting iinfo on one EEmployee
			hrSmith.calculateGrossPay(empMrA);
			hrSmith.calculateNetPay(empMrA);
			hrSmith.printPayChek(empMrA);
		} while(hrSmith.doYouWantToContinue());

	}

}
