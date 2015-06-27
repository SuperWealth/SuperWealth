Feature: User logging in
   In order to use the system
   As a user who wants secure investments
   I want to see error messages

   Scenario:
     Given I am on the home page
     When I enter an invalid username
     When I enter an invalid password
     When I press enter
     Then I should see sorry error message