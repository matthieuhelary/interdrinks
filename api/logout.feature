Feature: Logout
In order to keep my data private
As a user
I need to be able to logout

Background:
Given I am loggued-in as "Matthieu"

Scenario: Logout
When I ask to logout
Then I should be logout
And I should get a confirmation message
