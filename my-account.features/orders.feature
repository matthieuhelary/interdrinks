@account @order
Feature: Display customer data
As a customer
I need to get data regarding my account

Background: 
	Given I am authenticated as customer on a shop
	And shop is different than id 13

{code}
Scenario: My account all my orders
	When I'm on "/my-account/order"
	And I should see the list of all my orders 
{code}

{code}
Scenario: Sort orders by period
	Given I'm on "/my-account/order"
	Then I should see all my orders sorted by period in comparison to order creation date 
	|In progress 	|
	|Current month 	|
	|This year 		|
	|Last years 	|
{code}

{code}
Scenario: Order summary
	Given I'm on "/my-account/order"
	And there is an order summary
	Then I should see the following informations
	|order_id 			| 502333				|
	|article_number 	| 2 					|
	|total 				| 143,87€ 				|
	|state 				| Picking in progress  	|
	|order creation date| 09/03/2017 			|
{code}

{code}
Scenario: "In progress orders" section
	Given I'm on "/my-account/order"
	And there is a section "IN PROGRESS"
	Then I should find all orders with one of these status 
	|id	|state											|
	|2	|Payment accepted								|
	|3	|Preparation in progress 						|
	|27	|Picking in progress 							|
	|28	|Ready to ship 									|
	|29	|Beery Christmas Preparation in progress 		|
	|52	|Personalised glass to be sent to manufacturer 	|
	|53	|Manufacturing the personalised glass 			|
{code}

{code}
Scenario: "Current month" section
	Given I'm on "/my-account/order"
	And there is a section "CURRENT MONTH"
	And we are in "April 2018" 
	Then it should display all orders created with month = "April" and year = "2018"
	And that are not displayed in section "IN PROGRESS"
{code}

{code}
Scenario: "This year" section
	Given I'm on "/my-account/order"
	And there is a section "THIS YEAR"
	And we are in "2018" 
	Then it should display all orders created with year = "2018"
	And that are not displayed in section "IN PROGRESS"
	And that are not displayed in section "CURRENT MONTH"
{code}

{code}
Scenario: "Last years" section
	Given I'm on "/my-account/order"
	And there is a section "LAST YEARS"
	Then it should display all orders that are not displayed in section "IN PROGRESS"
	And that are not displayed in section "CURRENT MONTH"
	And that are not displayed in section "THIS YEAR"
{code}

{code}
Scenario: Hide empty section
	Given I'm on "/my-account/order"
	And a section is empty
	Then it should be hidden 
{code}

@my-account @order-details
{code}
Scenario: Open order details
	Given I'm on "/my-account/order"
	And there is an order id "502333"
	When I click on the order summary
	Then I should be sent to "/my-account/order/502333"
	And I should have the following details 
	|article number 		|
	|total 					|
	|Product_list			|
	|Billing_address		|
	|Delivery address 		|
{code}

{code}
Scenario: product details
	When I'm on "/my-account/order/502333"
	Then I should see for each product of the order
	|product_name		|Tripel Karmeliet 	|
	|quantity_ordered	|6					|
	|unit_price 		|2,40€				|
	|total_article 		|69,90€				|
{code}

{code}
Scenario: Address details
	When I'm on "/my-account/order/502333"
	Then I should see for each billing address
	|line	|element 	|example 		|
	|1		|civility	|M. 			|
	|1		|Firstname	|Bastien 		|
	|1		|Lastname	|Marécaux 		|
	|2		|addresses	|123 rue bidon 	|
	|3		|zipcode	|59000 			|
	|3		|civility 	|Lille 			|
{code}

{code}
Scenario: Address details
	Given I'm on "/my-account/order/502333"
	Then I should see for each delivery address
	|line	|element 	|example 		|
	|1		| civility	|M. 			|
	|1		|Firstname	|Bastien 		|
	|1		|Lastname	|Marécaux 		|
	|2		|addresses	|123 rue bidon 	|
	|3		|zipcode	|59000 			|
	|3		|civility 	|Lille 			|
{code}

{code}
Scenario: Mondial relay delivery address
	Given Given I'm on "/my-account/order/502333"
	And carrier selected is Mondial relay
	Then I should see for each Mondial Relay delivery address
	|line	|element 	|example 				|
	|1		|carrier	|Mondial Relay			|
	|1		|address 1	|Allo Fleur Vauban		|
	|2		|address 2	|124 rue du camion		|
	|3		|zipcode	|59000 					|
	|3		|civility 	|Lille 					|
{code}
