
Feature: Net Pay Test
  As a Hr I want to calculate Net Pay for an employee.
  
                       #positive Scenario
                       
  Scenario: Get net pay with an employee with hourly rate $20 and total hour 35.
    Given I use the HR system to calculate netpay of an employee
    When I enter hourly rate as $20
    And I enter total hour as 35
    And I expect net pay is 10% deducted from gross pay.
    Then I expect the result will be: Net Pay = 630.0 
    
    
  
  Scenario: Get net pay with an employee with hourly rate $60 and total hour 40.
    Given I use the HR system to calculate netpay of an employee
    When I enter hourly rate as $60
    And I enter total hour as 40
    And I expect net pay is 20% deducted from gross pay.
    Then I expect the result will be: Net Pay = 1920.0
    
    
    
  Scenario: Get net pay with an employee with hourly rate $80 and total hour 40.
    Given I use the HR system to calculate netpay of an employee
    When I enter hourly rate as $80
    And I enter total hour as 40
    And I expect net pay is 30% deducted from gross pay.
    Then I expect the result will be: Net Pay = 2240.0 
    
                      #Negative Scenario
                      
 
  Scenario: Get net pay with an employee with hourly rate $15 and total hour 42.
    Given I use the HR system to calculate netpay of an employee
    When I enter hourly rate as $15
    And I enter total hour as 42
    And I expect net pay is 10% deducted from gross pay.
    Then I expect the result will be: Net Pay = 567.0 
    
    # But when I put total hour as 42 then my expected result is not coming.
                         
    
    Scenario: Get net pay with an employee with hourly rate $65 and total hour 41.
    Given I use the HR system to calculate netpay of an employee
    When I enter hourly rate as $65
    And I enter total hour as 41
    And I expect net pay is 20% deducted from gross pay.
    Then I expect the result will be: Net Pay = 2132.0 
    
    # But when I put total hour as 41 then my expected result is not coming.
                         