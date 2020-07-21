Feature: Net Pay Test
  As An HR I Want Clean NetPay For An Employee 

  
  Scenario: Get net pay with an employee of $20 HOUR & 40 total.
    Given I use the HR system to calculate net pay of an employee.
    When I enter rate as 20.
    And I enter total hour as 40. 
   	Then I expect net pay is 10% deduction from gross pay.
     the result should be 720.   
  
  Scenario: Get net pay with an employee of $0 HOUR & 0 total.
    Given I use the HR system to calculate net pay of an employee.
    When I enter rate as 0.
    And I enter total hour as 0. 
   	Then I expect net pay is 0% deduction from gross pay.
   	Result should be 0. 
