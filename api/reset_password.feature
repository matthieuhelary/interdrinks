Feature: Reset password
In order to perform several actions
As a user
I need to be able to reset my password

Background:
Given I have an account

Scenario: 
When I ask to reset my password
Then I should receive the email number 42

Scenario:
Given I receive the email 42
When I click on the link
Then I should be able to fill a new password
And when I submit the new password
Then I should be loggued-in 

