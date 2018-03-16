Feature: Display customer data
As a customer
I need to get data regarding my account

Background: 
	Given I am authenticated as customer on a shop
	And shop isn't id 13

@my-account @addresses
{code}
Scenario: Display personnal information
	Given I'm on "/my-account"
	When I click on tab "My personnal information"
	Then I should arrive on "/my-account/change-personal-information"
	And I should see the following details
	|input 					|Information 				|Mandatory field 	|
	|civility 				|Mr. 						|Yes 				|
	|Name 					|Bastien 					|Yes 				|
	|Last_name 				|Marécaux 					|Yes 				|
	|Email 					|bastien.marécaux@gmail.com |Yes 				|
	|birthdate_day 			|01 						|Yes 				|
	|birthdate_month 		|January 					|Yes 				|
	|birthdate_year 		|1988 						|Yes 				|
	|Language 				|English 					|Yes 				|
	|Sign_up_for_newsletter	|True 						|Yes 				|
	|Receive_specail_offers	|True 						|Yes 				|
{code}

{code}
Scenario: Language dropdown list
	Given I'm on "/my-account/change-personal-information"
	And there is a dropdown list "Language"
	Then I should have the following options : 
	|English(English)	|
	|Deutsch (German)	|
	|Español (Spanish)	|
	|Français (French)	|
	|Italiano (Italian)	|
	|Dutch (Nederlands)	|
	|Swedish (Sweden)	|
{code}

{code}
Scenario: Change my password
	Given I'm on "/my-account/change-personal-information"
	When I click on "Change my password" button
	Then two fields "password" and "confirm_password" should appear
{code}

{code}
Scenario: Save new password
	Given I'm on "/my-account/change-personal-information"
	And I clicked on "Change my password button"
	And I filled the fields
	When I click on "Save" button
	Then new account password should be saved 
{code}

{code}
Scenario: Save button
	Given I'm on "/my-account/change-personal-information"
	And I filled all mandatory fields 
	When I click on "Save" button
	Then changes on personnal information should be saved 
{code}

{code}
Scenario: missing filled field
	Given I'm on "/my-account/change-personal-information"
	And I didn't filled a mandatory field
	When  I click on "Save" button
	Then a pop in with error message "This value should not be null." should appear 
{code}

Scenario: Sign up for newsletter

Scenario: Receive special offers from partners
