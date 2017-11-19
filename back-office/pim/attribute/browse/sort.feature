Feature: Sort attribute
  In order to check whether an attribute is available in the catalog
  As a product manager
  I need to be able to see attributes in the catalog

  Background:
    Given I am logged in as "Matthieu"
    And I am on the attributes page

  Scenario: Successfully sort attributes
    Then I should be able to sort the rows by Code, Label, Localizable and Group
