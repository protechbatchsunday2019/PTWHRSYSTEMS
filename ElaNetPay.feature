                   
                   
                   
                        Possitive Scenario
                    
  Scenario: To calculate  an employee netPay use HrSystem where hourlyRate=75 and
            totalHour=35.
   
    Given I open HrSystem to calculate an  employee's netPay and grossPay 
    When  I enter 75 as per hour
    And   I enter  totalHour 35
    Then  HrSystem  display grossPay is 2625.0 and netPay is 2100.0
    
    
    And check more outcomes


  Scenario:  To calculate  an employee netPay use HrSystem where hourlyRate=45 and
             totalHour=40.
                     
                     
    Given I open HrSystem to calculate an  employee's netPay and grossPay 
    When  I enter 45 as per hour
    And   I enter totalHour 40
    Then  HrSystem  display grossPay is 1800.0 and netPay is 1440.0
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     
    