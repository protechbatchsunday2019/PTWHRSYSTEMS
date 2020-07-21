
  Scenario: Get net Pay with an employee with hourly rate $35 and Total hour 40
    Given I use the HR system to calculate netpay of an employee
    When I enter hrate as $35
    And I enter total hour as 40
    And I deduct 10% from Grosspay
    Then I expect net pay is $1260. 
    
    Scenario: Get net Pay with an employee with hourly rate $35 and Total hour 40
    Given I use the HR system to calculate netpay of an employee
    When I enter hrate as $60
    And I enter total hour as 40
    And I deduct 20% from Grosspay
    Then I expect net pay is $1920. 