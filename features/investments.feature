Feature: View Investments
  In order to manage investments
  As a logged in user
  I want to see my available funds

  Scenario:
    Given I am logged in with no investments
    Then I should see no investments

  Scenario:
    Given I have the investments Apple and IBM
    When I am on my user profile page
    Then I should see Apple and IBM investments

