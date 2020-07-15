package hrsystem;
import java.util.Scanner;

public class InputSystem {


	String doYouwantTocontinue;
	Employee mrx = new Employee();

	static int maxEmployeeCount=0; // this is keeep its vvalue 

	Scanner myscan = new Scanner(System.in);


	public Employee getInputOfemployee() {

		System.out.print("\nEnter Emp Name : ");
		mrx.empName = myscan.nextLine();
	
		boolean isValid;

		// Taking Valid Input for Ratee
		do {
			isValid=getValidRate(); // trueee / Flse
			if(isValid==false) {
				System.out.println("Please enter a Rate between 15 to 80...");
			}
		} while(!isValid); // Reverse Logic 

	
		// Taking Valid Input for Totoal Hours
		do {
			isValid=getValidHour(); // new True / False
			if(isValid==false) {
				System.out.println("Please enter a hour between 0 to 40...");
			}

		} while(!isValid); // Reverse Logic 

		return mrx;
	}


	private boolean getValidRate() {	
		try {
			Scanner rateScanner = new Scanner(System.in);
			System.out.print("Enter Hourly Rate : ");
			mrx.hourlyRate = rateScanner.nextDouble();
			if(mrx.hourlyRate>=15 && mrx.hourlyRate<=80) {
				return true;
			} else {
				return false;
			}
		}catch(Exception e) {
			return false;
		}
	}

	private boolean getValidHour() {
		try {
			Scanner hourScanner = new Scanner(System.in);
			System.out.print("Enter Total Hour : ");
			mrx.totalHour = hourScanner.nextDouble();
			if(mrx.totalHour>=0 && mrx.totalHour<=40) {
				return true;
			} else {
				return false;
			}
		}catch(Exception e) {
			return false;
		}		
	}


	public boolean doYouWantToContinue() {

		System.out.print("Do You Want to Continue ");
		doYouwantTocontinue = myscan.nextLine();
		maxEmployeeCount++; 

		// Compound Operation
		if(maxEmployeeCount <= 3 && doYouwantTocontinue.toUpperCase().equals("YES")) {
			return true;
		} else {
			return false;
		}

	}


}
