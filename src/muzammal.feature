Feature: Net Pay Test
As a HR I want to calculate Net Pay for an employee

 Scenario: Get net pay with an employee with hourly rate $40 and total hour 40
    Given I use the HR system to calculate netpay of an employee
    When I enter hrate as $40
    And I enter total hour as 40 
    And I deduct 10% from grosspay
    Then I expect net pay is $1540
    
  Scenario: Get net pay with an employee with hourly rate $10 and total hour 40
    Given I use the HR system to calculate netpay of an employee
    When I enter hrate as $10
    And I enter total hour as 60 
    And I deduct 10% from grosspay
    Then I expect net pay is 0
    
    
Feature: Title of your feature
  I want to use this template for my feature file

  @tag1
  Scenario: Title of your scenario
    Given I want to write a step with precondition
    And some other precondition
    When I complete action
    And some other action
    And yet another action
    Then I validate the outcomes
    And check more outcomes

  @tag2
  Scenario Outline: Title of your scenario outline
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
