Feature: Display customer data
As a customer
I need to get data regarding my account

Background: 
	Given I am authenticated as customer on a shop
	And shop isn't id 13

@my-account @addresses
{code}
Scenario: Display addresses
	Given I'm on "/my-account"
	When I click on tab "My address"
	Then I should arrive on "my-account/addresses"
	And I should see the list of all my addresses
{code}

{code}
 Scenario: Address details
	Given I'm on "/my-account/addresses"
	Then I should see for address
	|line	|element 	|example 				|
	|1		|Firstname	|Bastien 				|
	|1		|Lastname	|Marécaux 				|
	|2		|addresses	|2 rue de la Meuse 		|
	|3		|zipcode	|59155 					|
	|3		|city		|FACHES THUMESNIL		|
	|4		|country 	|France					|
{code}

{code}
Scenario: Edit address
	Given I'm on "/my-accountaddresses"
	And there is an address id 699108
	When I click on pencil picto
	Then I should arrive on "/my-account/address/edit/699108"
	And I should see the following details 
	|input 			|information 		|mandatory field 	|
	|Name 			|Marécaux 			|True 				|
	|Surname 		|Bastien 			|True 				|
	|Address 		|2 rue de la Meuse 	|True 				|
	|Address_detail |null	 			|False 				|
	|Zipcode 		|59155 				|True 				|
	|City 			|Faches-Thumesnil 	|True 				|
	|Country 		|France 			|True 				|
{code}

{code}
Scenario: Save address changes
	Given I'm on "/my-account/address/edit/699108" 
	When I click on "Save" button
	Then it should save all changes of address id 699108
{code}

{code}
Scenario: Go back to addresses collection 
	Given I'm on "/my-account/address/edit/699108"
	When I click on arrow 
	Then I should be sent to "/my-account/addresses"
{code}

{code}
Scenario: Add new address 
	Given I'm on "my-account/addresses"
	When I click on "Add new address" button
	Then I should be sent to "/my-account/address/add"
{code}

{code}
Scenario: Create new address
	Given I'm on "/my-account/address/add"
	Then I should see the following details 		
	|Name 				|
	|Surname 			|	
	|Address 		 	|
	|Address_detail 	|
	|Zipcode 			|
	|City 				|
	|Country 			|
{code}

{code}
Scenario: Missing information
	Given I'm on "/my-account/address/add"
	And there is a mandatory field that isn't filled
	When I click on "Save" button
	Then a error message should be displayed
	And new address isn't saved 
{code}

{code}
Scenario: Save new address
	Given I'm on "/my-account/address/add"
	And I filled all the fields 
	When I click on "Save" button 
	Then I should go back to "my-account/addresses"
	And an address id 699109 is created and added in the list
{code}
