Feature: Net Pay Test
		As a HR I want Clean Net Pay for an employee
		
		Scenario: Get Net Pay with an employee for $20.00 per hour of Total 40 hour 
    Given I use the HR system to calculate Net Pay of an employee
    When I Enter Hourly rate $20.00
    And I enter Total Hour as 40
    Then I expect Net Pay is 10% deducted from gross pay
    
    
    Scenario: Get Net Pay with an employee for $0.00 per hour of Total 0 hour 
    Given I use the HR system to calculate Net Pay of an employee
    When I Enter Hourly rate $0.00
    And I enter Total Hour as 0
    Then I expect Net Pay is 0% deducted from gross pay
    			#Result will = 0.00
    