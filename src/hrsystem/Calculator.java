package hrsystem;

public class Calculator {

	public double calCulateGroossPayFor(Employee e) {
		return e.grossPay=e.totalHour * e.hourlyRate;
	}
	
	
	public double calCulateNetpay(Employee e) {
		
		double netPay = 0;
	
		if(e.grossPay > 0 && e.grossPay<=1500 ) {
			// Calculate Gross Pay - 10%
			netPay = e.grossPay * (1 - .10);
		} else if(e.grossPay > 1500 && e.grossPay<=3000 ) {
			netPay = e.grossPay * (1 - .20);
		} else if(e.grossPay > 3000 && e.grossPay<=4500) {
			netPay = e.grossPay * (1 - .30	);
		} else if(e.grossPay > 4500 && e.grossPay<=6000) {
			netPay = e.grossPay * (1 - .40);
		} else if(e.grossPay > 6000){
			netPay = e.grossPay * (1 - .50);
		} else {
			System.out.println("Hmmm Something is Wrong !! its not 1500 not 300 not 600 what is this ........");
		}
			
		// Remember this Line 29
		e.netPay = netPay; // Its just Storing the netpay infoo to employee 
		
		return e.netPay = netPay;
	}

	
	
	
	
	
}
