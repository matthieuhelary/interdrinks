Feature: As a user, I want to be able to login with the API

Scenario: Login
Given I give the data :
| email | johndoe@example.com |
| password | johndoe1234 |
Then I should be loggued-in 
And I should get a confirmation message
