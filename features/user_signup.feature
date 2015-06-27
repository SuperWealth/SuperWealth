Feature: User can sign up
  In order to sign up for SuperWealth
  As a user I need to click sign up
  I want to enter my email and password

  Scenario:
    Given I am on the home page
    When I click sign up button
    Then I should see Please Sign Up

  Scenario:
    Given I am on the sign up page
    When I enter a username
    When I enter a password
    Then I should see User name created