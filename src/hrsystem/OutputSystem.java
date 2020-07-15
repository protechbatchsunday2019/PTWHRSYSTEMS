package hrsystem;
public class OutputSystem {

	
	public void generatePaycheck(Employee e) {
		System.out.println("\nEmployee Name is : " + e.empName );
		System.out.println("Hourly rate is : " + e.hourlyRate );
		System.out.println("Total Hour is  : " + e.totalHour );
		System.out.println("Gross Pay is  : " + e.grossPay );
		System.out.println("Net Pay is  : " + e.netPay ); //
	}

}
