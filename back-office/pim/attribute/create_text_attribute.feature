Feature: Create an attribute
  In order to be able to define the properties of a product
  As a product manager
  I need to create a text attribute

  Background:
    Given I am logged in as "Matthieu"
    And I am on the attributes page
    And I create a "Text" attribute

  Scenario: Successfully create and validate a text attribute
    Given I fill in the following information:
      | Code            | short_description |
      | Attribute group | Other             |
    And I save the attribute
    Then I should see the flash message "Attribute successfully created"

  Scenario: Fail to create a text attribute with an invalid code
    Given I change the Code to an invalid value
    And I change the "Attribute group" to "Other"
    And I save the attribute
    Then I should see validation error "Attribute code may contain only letters, numbers and underscores"

  @info Codes 'id', associationTypes', 'categories', 'categoryId', 'completeness', 'enabled', 'family', 'groups', 'associations', 'products', 'scope', 'treeId', 'values', '*_groups' and '*_products' are reserved for grid filters and import/export column names
  Scenario: Fail to create a text attribute with a reserved code
    Given I change the "Code" to "categories"
    And I change the "Attribute group" to "Other"
    And I save the attribute
    Then I should see validation error "This code is not available"


  Scenario: Fail to create a text attribute when the group is missing
    Given I fill in the following information:
      | Code | short_description |
    And I save the attribute
    Then I should see validation error "This value should not be blank."
