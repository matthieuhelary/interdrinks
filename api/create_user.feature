Feature: Create a user with the API
  In order to be able to create a user
  As a product manager
  I need to create a user with the API
  
  Background : 
  Given I am loggued-in as "Matthieu"

  Scenario: Create a user on a B2B website
  When I create a user with:
  | email | johndoe@example.com |
  | firstName | John |
  | lastName | DOE |
  | gender | Male |
  | birthDate | 03/02/1990 |
  | password | johndoe1234 |
  | activation | false | 
  | shopID | 13 |
  Then I should get the new user data
  And the user should receive an email

  Scenario: Create a user on a B2C website
  When I create a user with:
  | email | johndoe@example.com |
  | firstName | John |
  | lastName | DOE |
  | gender | Male |
  | birthDate | 03/02/1990 |
  | password | johndoe1234 |
  | activation | true | 
  Then I should get the new user data
  And the user should receive an email

