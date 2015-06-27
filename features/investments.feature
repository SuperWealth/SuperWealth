Feature: View Investments
  In order to manage investments
  As a logged in user
  I want to see my available funds

  Scenario:
    Given I am logged in with a balance of £1000
    When I am on my user profile page
    Then I should see my balance of £1000

  Scenario:
    Given I am logged in with no investments
    When I am on my user profile page
    Then I should see no investments

  Scenario:
    Given I have the investments Apple and IBM
    When I am on my user profile page
    Then I should see Apple and IBM investments

