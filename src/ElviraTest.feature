
  Scenario: Open your HrSystem and calculate a netpay using the hrRate=40 and total hours =40
    Given I open hrsystem
    When I enter 40 as hourly rate
    And I enter 40 as a total hours
    Then hrsystem displays net and gross pay 
    
 