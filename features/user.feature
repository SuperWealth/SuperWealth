Feature: User logging in
   In order to use the system
   As a user I need to log in
   I want to enter a valid username and password

   Scenario:
     Given I am on the home page
     When I enter a valid username
     When I enter a valid password
     When I press enter
     Then I should see the User Balance Page