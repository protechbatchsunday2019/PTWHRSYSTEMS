Feature: Net Pay Calculation Test
      As a HR I want to calculate Net pay for employees based on gross pay.

  Scenario: Get net pay with an employee with hourly rate $15 and total hour 40.
    Given I use the HR system to calculate netpay pay of an employee.
    When I enter hourly rate as $15
    And I enter total hour 40
    Then I validate the output of gross pay is 600 and in between >0 and <=1500
    And I expect net pay is 10% deducted from gross pay.
       #Result will be:- Net Pay = 540.0

	Scenario: Get net pay with an employee with hourly rate $60 and total hour 40.
    Given I use the HR system to calculate netpay pay of an employee.
    When I enter hourly rate as $60
    And I enter total hour 40
    Then I validate the output of gross pay is 2400.0 and in between >1500 and <=3000
    And I expect net pay is 20% deducted from gross pay.
       #Result will be:- Net Pay = 1920.0
       
	Scenario: Get net pay with an employee with hourly rate $80 and total hour 40.
    Given I use the HR system to calculate netpay pay of an employee.
    When I enter hourly rate as $80
    And I enter total hour 40
    Then I validate the output of gross pay is 3200.0 and in between >3000 and <=4500
    And I expect net pay is 30% deducted from gross pay.
       #Result will be:- Net Pay = 2240.0
       
	Scenario: Get net pay with an employee with hourly rate $14 and total hour 40.
    Given I use the HR system to calculate netpay pay of an employee.
    When I enter hourly rate as $14
    And I enter total hour 40
    And I expect Error Message 'Please enter a Rate between 15 to 80...'
       #Result will be:- Net Pay = 0.0.
       
	Scenario: Get net pay with an employee with hourly rate $85 and total hour 40.
    Given I use the HR system to calculate netpay pay of an employee.
    When I enter hourly rate as $85
    And I enter total hour 40
    And I expect Error Message 'Please enter a Rate between 15 to 80...'
       #Result will be:- Net Pay = 0.0.
       
	Scenario: Get net pay with an employee with hourly rate $40 and total hour 45.
    Given I use the HR system to calculate netpay pay of an employee.
    When I enter hourly rate as $ 40
    And I enter total hour 45
    And I expect Error Message 'Please enter a hour between 0 to 40...'
       #Result will be:- Net Pay = 0.0.
       
       
       
       
       
 
