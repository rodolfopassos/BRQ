@website
Feature: Login and Logout validation

  @herokuapp
  Scenario: Search for strings
    Given I am on the herokuapp page
    When I access the login page
    Then I must see the text "Login Page"

  @happy
  Scenario: Happy Path
    Given I am on the herokuapp page
    When I input username "tomsmith" and password "SuperSecretPassword!"
    And I click in the Login button
    Then I must see the text "You logged into a secure área!"
    And I click in the Logout button
    Then I must see the text "You logged out of the secure área!"
