@http_api
Feature: Validation of api

  @happy_path
  Scenario: Get the correct zip code
    Given I input a zip code
    When I perform an API GET call to the service "CEP" 
    Then I must see the complete address

  @unhappy_path
  Scenario: Get the incorrect zip code
    Given I input a zip code
    When I perform an API GET call to the service "CEP" 
    Then I must see the error message

