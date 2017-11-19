Feature: Update a user with the API
  In oder to update a user informations
  As a product manager
  I need to update a user with the API

Background:
Given I am loggued-in as "Matthieu

Scenario: Update a user
When I update a user with valid data
Then I should get the new user data
