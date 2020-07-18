
Feature: Net Pay Test
  As a HR I want to calculate Net pay for an employee.

  Scenario: Get net Pay with an employee with hourly rate $30 and Total hour 40
    Given I use the HR system to calculate netpay of an employee
    When I enter hrate as $30
    And I enter total hour as 40
    And I deduct 10% from Grosspay
    Then I expect net pay is $1080. 
   

 Scenario: Get net pay with an employee with hourly rate $10 and total hour 50
    Given I use the HR system to calculate netpay of an employee
    When I enter hrate as $10
    And I enter total hour as 50
    And I deduct 10% from grosspay
    Then I expect net pay is 0