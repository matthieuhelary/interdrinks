Feature: 
In order to perform several actions on website
As a user
I need to be able to login

Background :
Given I have an account

Scenario: Login
Given I give the data :
| email | johndoe@example.com |
| password | johndoe1234 |
Then I should be loggued-in 
And I should get a confirmation message
