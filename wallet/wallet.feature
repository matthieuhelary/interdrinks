"""
[{
	"@id": "/customers/1234",
	"walletAmount": 30.00,
	"walletCurrency": "€",
	"events": [{
		"referrals": {
			"@id": "/referrals/1234",
			"createdAt": "timestamp",
			"amount": 13.00,
			"currency": "€",
			"customers": {
				"@id": "/customers/9999",
				"firstName": "Matthieu",
				"lastName": "Helary"
			}
		},
		"orders": {
			"@id": "/orders/1234",
			"createdAt": "timestamp",
			"amount": 13.00,
			"currency": "€"
		},
		"refund": {
			"@id": "/refund/9999",
			"createdAt": "timestamp",
			"amount": 13.00,
			"currency": "€",
			"orders": {
				"@id": "/orders/1234"
			}
		},
		"kegsreturn": {
			"@id": "/kegsreturn/1234",
			"createdAt": "timestamp",
			"amount": 13.00,
			"currency": "€"
		},
		"pointconversion": {
			"@id": "/pointsconversion/1234",
			"createdAt": "timestamp",
			"amount": 13.00,
			"currency": "€",
			"points": 300

		},
		"walletmanual": {
			"@id": "/walletmanuals/1234",
			"createdAt": "timestamp",
			"amount": 13.00,
			"currency": "€",
			"employees": {
				"@id": "/employees/1234"
			}
		}
	}]
}]
"""











Feature: Get data for wallet
As a marketing manager
I need to get data regarding the wallet

Scenario:
Given I am authenticated as an employee on the API
When I do a GET request on "/wallet/data?from={timestamp}&to={timestamp}"
Then I should receive the following response :

"""


"""



Feature: Tracking GTM de tous les scenarios




Background: 

@wallet @back-office @BACKOFFICE-1234
Scenario Outline: Credit and debit money
Given I am authenticated on the back-office
And I click on "Credit / Debit" button
And I choose an <event> and an <ammount> and a <currency>
And I click on "Create" button
Then <amount_available> of customer's wallet should be updated
And a <relation_id> should be linked to the <event>

Examples: 
| event 			| amount 	| currency 	| relation_id 	| ammount 	| amount_available	|
| Referral			| 10		| €			| 1234			| 10		| 10				|
| Order 			| 10		| €			| 1234			| 10		| 10				|
| Order Refund		| 10		| €			| 1234			| 10		| 10				|
| Kegs Return		| 10		| €			| 1234			| 10		| 10				|
| Points conversion	| 10		| €			| 1234			| 10		| 10				|
| Gift Card			| 10		| €			| 1234			| 10		| 10				|



@wallet @back-office
Feature: Debit money from wallet in back-office

Feature: Credit money to wallet from backoffice



____________________________________________________________________________________________________________________________________________________


@wallet @order-confirmation
Feature: Order confirmation

Background: 
Given I am authenticated as a customer on a shop
And I am on "/order-confirmation" page

Scenario: Successfully display cart summary on order confirmation page
Then I should see a cart summary with the following elements :
||
||
||
||
||

Scenario: Button back to homepage
When I click on "Back to homepage" button
Then I should go shop homepage


Scenario: Successfully display billing address on order confirmation page
Then I should see the following informations :
| first name 	|
| last  name 	|
| address 1		|
| address 2		|
| zipcode		|
| city			|
| country 		|


Scenario: Successfully display shipping address on order confirmation page
Then I should see the following informations :
| first Name 	|
| last  name 	|
| address 1		|
| address 2		|
| zipcode		|
| city			|
| country 		|

Scenario: Successfully display shipping address with Mondial Relay on order confirmation page
Given the carrier for the order is Mondial Relay
Then I should see "Mondial Relay"
And I should see the following informations :
| first Name 	|
| last  name 	|
| address 1		|
| address 2		|
| zipcode		|
| city			|
| country 		|

Scenario: Set password for new customer
	Given I am a new customer
	When I fill "password" with "aquaponey"
	And I fill "confirm password" with "aquaponey"
	And I click on "Validate" button
	Then I should have the password linked to my account
	And the password block should be replaces by the "Track my order" button

Scenario: Don't show password for existing customer
	Given I am an existing customer
	And I already set my password during my customer journey
	Then I shouldn't see "Set password" block
	And I should see the "Track my order" button


Scenario: Successfully display Messenger plugin on order confirmation page
Then 

Scenario: Click on "Track my order"
	When I click on "Track my order" button
	Then I should go on "/my-account/order/{id}" page

Scenario: Click on logistic message
	When I click on "Add a message for the logistics team"
	And I fill in the following text:
	"""
	Please take care of my package and put some stickers in it if you have !
	Thanks
	"""
	And I click on "Add" button
	Then my order should be updated with a logistic message


Scenario: Cancel logistic message
	When I click on "Add a message for the logistics team"
	And I click on "Cancel" button
	Then I should go on "/order-confirmation" page

Scenario: Click on referral block

Feature: Create a referral programm

____________________________________________________________________________________________________________________________________________________

@wallet @referral
Feature: Share the referral code

Background: 
Given I am on 

Scenario: Copy paste URL
When I click on "Referral code" input
Then the URL should be copy paste on my clipboard 


Scenario: Share the referral code via Email
When I click on "Share" button
And I select "Email"
Then my email client should launch
And I should have the following informations pre-filled :
""
Subject: 

Body:

""


Scenario: Share the referral code via SMS
When I click on "Share" button
And I select "SMS"
Then my SMS should launch
And I should have the following message pre-filled
""
Message

""

Scenario: Don't display SMS option if user is on Desktop
When I click on "Share" button
And I am on desktop
Then I shouldn't see "SMS" sharing option


Scenario: Share the referral code via Facebook
When I click on "Share" button
And I select on "Facebook"
Then 

"""
Description: 
Have a look on this documentation :
https://developers.facebook.com/docs/sharing/webmasters
"""

Scenario: Share the referral code via Messenger
When I click on "Share" button
And I select on "Messenger"
Then 

Scenario: Share the referral code via Twitter
When I click on "Share" button
And I select on "Twitter"
Then 

@wallet @referral
Feature: Link account for referral

Scenario: Create an account
Given I click on a referral url
And I am on "/account"
And I create an account
Then my account should be linked to my sponsor's account

Scenario: First order
Given I am authenticated as a customer
And I order on a shop
And I have a sponsor linked to my account
And it is my first order across all shops
Then I should receive 5€ on my wallet
And my sponsor should receive 5€ on his wallet

Scenario: Second order
Given I am authenticated as a customer
And I order on a shop
And I have a sponsor linked to my account
And it is my second order across all shops
Then I shouln't receive 5€ on my wallet
And my sponsor shouldn't receive 5€ on his wallet

@wallet @referral
Feature : Send emails when money is credited

Scenario: Email money received

Scenario: Sponsor email


Scenario: KPI

@wallet @landing-page
Feature: Wallet landing page

Background: 
Given I am off 


Scenario: Email prefilled 
	Given I'm on referral landing page
	Then I should find the following field to fill :
	| Email |
	And solutions to share link are hidden


Scenario: Validate email
	Given I'm on referral landing page
	And I fill the email field
	When I click on "Next" button 
	Then solutions to share link are displayed


Background: 
Given I am on 


Scenario: Email prefilled 
	Given I'm on referral landing page
	Then I should find the following field prefilled :
	| Email | bastien.marecaux@gmaio.com |


Scenario: Copy paste URL
When I click on "Referral code" input
Then the URL should be copy paste on my clipboard 


Scenario: Share the referral code via Email
When I click on "Share" button
And I select "Email"
Then my email client should launch
And I should have the following informations pre-filled :
""
Subject: 

Body:

""


Scenario: Share the referral code via SMS
When I click on "Share" button
And I select "SMS"
Then my SMS should launch
And I should have the following message pre-filled
""
Message

""

Scenario: Don't display SMS option if user is on Desktop
When I click on "Share" button
And I am on desktop
Then I shouldn't see "SMS" sharing option


Scenario: Share the referral code via Facebook
When I click on "Share" button
And I select on "Facebook"
Then 

"""
Description: 
Have a look on this documentation :
https://developers.facebook.com/docs/sharing/webmasters
"""

Scenario: Share the referral code via Messenger
When I click on "Share" button
And I select on "Messenger"
Then 

Scenario: Share the referral code via Twitter
When I click on "Share" button
And I select on "Twitter"
Then 

@wallet @account
Feature: Add wallet into account

{code}
Scenario: Account creation referral
	Given I opened the referral link
	When I arrive on "/login"
	Then I should have following pre-filled information : 
	| code 					| BASTII29 			|
	| You get invited by 	| Bastien Marécaux	|
{code}

{code}
Scenario: Account creation referral fields
	Given I opened the referral link
	When I arrive on "/login"
	Then I should have following field to fill : 
	| civility 			|
	| firstname 		|
	| lastname 			|
	| Email 			|
	| Birthday day 		|
	| Birthday month 	|
	| Birthday year 	|
	| Password 			|
	| Confirm Password 	|
{code}

{code}
Scenario: Click on create button
	Given I opened the referral link
	And I arrived on "/login"
	And I filled all details 
	When I click on "Create account" button 
	Then My account should be created
	And I should receive 5€ on my wallet 	 
{code}

____________________________________________________________________________________________________________________________________________________
{code}
@wallet @perfecdraft-return @back-office @pipo
Feature: Perfecdraft returns
As a logistic user
I need to print perfecdraft return label
{code}

{code}
@api
Scenario: Get information for a keg return
	Given I am authenticated as an employee on the API
	When I do a GET request "/kegreturn"
	Then I should have the following response :

"""
{
	"id:": 1234,
	"orders": {
		"@id": "/orders/2",
		"createdAt": 1517412197,
		"shopName": "B2B"
	},
	"customers": {
		"@id": "/customers/363636",
		"firstName": "Matthieu",
		"lastName": "Helary"
	},
	"wallets": {
		"@id": "/wallets/1234",
		"transactionId": 1234,
		"amount": 5,
		"currency": "€"
	},
	"createdAt": 1517412197,
	"status": {
		"id": 3,
		"name": "Credited"
	},
	"shipping": {
		"@id": "/carrier/{id}",
		"carrierName": "Mondial Relay",
		"shippingNumbers": "AAA1234"
	}
}

"""
{code}

{code}
@api
Scenario: Get all keg returns
	Given I am authenticated as an employee on the API
	When I do a GET request on "/kegreturn"
	Then I should have the list of all keg returns.
{code}

{code}
@api
Scenario: Create a keg return	
	Given I am authenticated as an employee on the API
	When I do a POST request on "/kegreturn"
	And the body is :
	"""
{
	"id:": 1234,
	"orders": {
		"@id": "/orders/2"
	},
	"status": {
		"id": 1,
		"name": "Printed"
	},
	"shipping": {
		"@id": "/carrier/{id}",
		"shippingNumbers": "AAA1234"
	}
}

	"""
	Then I should have a success response
	And the keg return should be created
{code}

{code}
@api
Scenario: Update a keg return
	Given I am authenticated as an employee on the API
	When I do a PUT request "/kegreturn/{id}"
	And the body is :
	"""
{
	"status": {
		"id": 1,
		"name": "Received"
	}
}

"""	
	Then I should have a success response
	And the keg return should be updated
{code}

{code}
@api
Scenario: Get the list of keg refund reasons
	Given I am authenticated as an employee on the API
	When I do a GET request on "/kegreturn/reasons"
	Then I should get the following response :

"""
[{
	"id": 1,
	"Name": "Printed"
}, {
	"id": 2,
	"Name": "Received"
}, {
	"id": 3,
	"name": "Credited"
}]
"""
{code}

{code}
@keg-return @wallet @pipo @back-office
Scenario: Print kegs return explanation and return label for a product
	Given I am authenticated as an employee on back-office
	And there is an order that contains a product with business category id equal 10
	And the order have a gift message
	And the delivery address country value contains "France"
	When I push button "Label" on order view
	Then the following elements should be printed : 
	| shipping labels 			|
	| gift message 				|
	| kegs return explanation	|
	| return label 				|
{code}

{code}
Scenario: Print kegs return explanation and return label for a pack
	Given I am authenticated as an employee on back-office
	And there is an order that contains a pack 
	And the pack contains at least one product with business category id equal 10
	And the delivery address country value contains "France"
	When I push button "Label" on order view
	Then the following elements should be printed : 
	| shipping labels 			|
	| explanation kegs return 	|
	| return label 				| 
{code}

{code}
Scenario: Print labels for business category different than 10
	Given I am authenticated as an employee on back-office
	And there is an order
	And there is no product with business category equal 10
	And the delivery address country value contains "France"
	When I push button "Label" on order view
	Then the following elements should be printed : 
	| shipping labels 			| 
{code}

{code}
Scenario: Create keg return 
	Given I am authenticated as an employee on back-office
	And there is an order that contains a product from business category id equal 10
	And the delivery address country value contains "France"
	When I push button "Label" on order view
	Then a keg return should be created
	And the keg return status should be "Printed"
{code}

{code}
Scenario: Delivery address on return label 
	Given I am authenticated as an employee on back-office
	And there is an order that contains a product with business category id equal 10
	And the delivery address country value contains "France"
	When I push button "Label" on order view
	Then the delivery address on return label should be the following one : 
	"""
	INTERDRINKS
	2 RUE DU CHEMIN VERT
	59273 FRETIN
	FRANCE
	"""
{code}


{code}
@keg-return @wallet @pipo @back-office
Feature: Receipt perfectdraft kegs in the warehouse
As an employee
I need to proceed kegs return
{code}

{code}
Scenario Outline: Scan keg return label and credit money on wallet
	Given I am authenticated as an employee on back-office
	And there is a keg return id 1234
	And I am on "/logistic/kegreturn/"
	When I scan Mondial Relay's tracking barcode "AA39393"
	Then keg return status should be updated to "Received"
	And I add <quantity> quantity 
	And I click on "Confirm" button
	Then customer's wallet should be credited
	And <amount credited> should be <quantity> * 5€
	And keg return status should be updated to "Credited"
	And I should see a success message

	Examples:
	|quantity 	| amount credited 	|
	| 1			| 5	 				|
	| 2 		| 10 				|
	| 3 		| 15 				|		
{code}

{code}
@drive
Scenario: Search for a keg return with customer email
	Given I am authenticated as an employee on back-office
	And there is a keg return id 1234
	And I am on "/logistic/kegreturn" page
	When I search a customer with "email" equal "matthieu.helary@gmail.com"
	Then I should see the following table:
	| email 					| keg return|
	| matthieu.helary@gmail.com | 1234 		|
	And I click on "Credit" button
	And I add <quantity> quantity 
	And I click on "Confirm" button
	Then customer's wallet should be credited
	And <amount credited> should be <quantity> * 5€
	And keg return status should be updated to "Credited"
	And I should see a success message

	Examples:
	|quantity 	| amount credited 	|
	| 1			| 5	 				|
	| 2 		| 10 				|
	| 3 		| 15 				|
{code}

{code}
@drive
Scenario Outline: Search for a keg return with shipping number
	Given I am authenticated as an employee on back-office
	And there is a keg return id 1234
	And I am on "/logistic/kegreturn/"
	When I search a keg return with "shipping number" equal "AA39393"
	Then I should see the following table:
	| email 					| keg return|
	| matthieu.helary@gmail.com | 1234 		|
	And I click on "Credit" button
	And I add <quantity> quantity 
	And I click on "Confirm" button
	Then customer's wallet should be credited
	And <amount credited> should be <quantity> * 5€
	And keg return status should be updated to "Credited"
	And I should see a success message

	Examples:
	|quantity 	| amount credited 	|
	| 1			| 5	 				|
	| 2 		| 10 				|
	| 3 		| 15 				|
{code}

Scenario: Mail sent to customer

Scenario: Download return label from its account


____________________________________________________________________________________________________________________________________________________

{code}
@wallet @refund @api
Feature: Create a refund endpoint
As an employee
I need to refund a customer 
{code}


{code}
Scenario: Get information for a refund 
Given I am authenticated as an employee on the API
When I do a GET request on "/refund/{id}"
Then I should get the following response :

"""
{
	"id:": 1234,
	"orders": {
		"@id": "/orders/2",
		"createdAt": 1517412197,
		"shopName": "B2B",
		"paymentMethod": {
			"id": 2,
			"name": "Adyen"
		}
	},
	"customers": {
		"@id": "/customers/363636",
		"firstName": "Matthieu",
		"lastName": "Helary"
	},
	"wallets": {
		"@id": "/wallets/1234",
		"transactionId": 1234,
		"amount": 5,
		"currency": "€"
	},	
	"createdAt": 1517412197,
	"reason": "Lorem ipsum",
	"refundMethod": "Wallet",
	"products": {
		"productAmountRefund": 26.00,
		"currency": "€",
		"productList": [{
				"id": 82,
				"name": "Tripel Karmeliet",
				"priceTaxIncluded": 14.00,
				"priceTaxExcluded": 13.00,
				"currency": "€"
			},
			{
				"id": 83,
				"name": "Beer Name",
				"priceTaxIncluded": 14.00,
				"priceTaxExcluded": 13.00,
				"currency": "€"
			}
		]
	},
	"shipping": {
		"@id": "/carrier/{id}",
		"shippingAmountRefund": 14.00,
		"currency": "€"
	}

}

"""
{code}

{code}
Scenario: Get all refunds
Given I am authenticated as an employee on the API
When I do a GET request on "/refund/"
Then I should get the list of all refunds
{code}

{code}
Scenario: List of refund reason
Given I am authenticated as an employee on the API
When I do a GET request on "/refund/reason"
Then I should get the following response :

"""
[{
		"id": 1,
		"Name": "Broken"
	}, {
		"id": 2,
		"Name": "Products out of stock"
	}, {
		"id": 3,
		"name": "Missing products"
	}, {
		"id": 4,
		"name": "Package not delivered"
	}, {
		"id": 5,
		"name": "Package refused"
	}, {
		"id": 6,
		"name": "Package delivered too late"
	}, {
		"id": 7,
		"name": "Goodwill gesture"
	}, {
		"id": 8,
		"name": "Unknown reason"
	}
]
"""
{code}

Wallet: ajouter un endpoint pour crediter à la main avec une raison



