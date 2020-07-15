package hrsystem;

public class HR {

	//Module Method 
	public Employee getEmployeeDetails() {
		InputSystem inputsystem = new InputSystem();
		return inputsystem.getInputOfemployee();
	}
	
	public void printPayChek(Employee e) {
		OutputSystem print = new OutputSystem();
		print.generatePaycheck(e);
	}

	// Power 1 - to calculate gross pay
	public void calculateGrossPay(Employee e) {
		Calculator cal = new Calculator();
		cal.calCulateGroossPayFor(e);
	}
	
	// Power 1 - to calculate net pay
	public void calculateNetPay(Employee e) {
		Calculator cal = new Calculator();
		cal.calCulateNetpay(e);
	}

	
	
	public boolean doYouWantToContinue() {
		InputSystem inputsystem = new InputSystem(); // Problem is here ...
		return inputsystem.doYouWantToContinue();
	}

	
}
