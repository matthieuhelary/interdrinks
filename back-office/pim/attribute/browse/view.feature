Feature: View attributes
  In order to check whether an attribute is available in the catalog
  As a product manager
  I need to be able to see attributes in the catalog

  Background:
    Given I am logged in as "Matthieu"
    And I am on the attributes page

  Scenario: Successfully view attributes
    Then the grid should contain 6 elements
    And I should see the columns Code, Label, Type, Group, Localizable
    And I should see attributes Product Id, Name, Short Description, Description, Beer Style, Beer Color
    And the rows should be sorted ascending by Label

  Scenario: Successfully search attributes and empty field
    Then the grid should contain 6 elements
    When I search "beer"
    Then I should see attributes Beer Style, Beer Color
    And the grid should contain 2 elements
    When I click on the "Beer Style" row
    Then I should see the text "Label translations"
