@gift-wizard 
Background: 
	Given I'm on "/8-cadeaux" page
	And I am on shop id 1

{code}
Scenario: Display gift wizard block
	Given I'm on "/8-cadeaux"
	When I look the top of the page
	Then I should see the gift wizard block
	And it should display |question1|
	And it should display a field |answer1| 
{code}

{code}
Scenario: Answer |question1|
	Given I see the gift wizard block
	When I click in field |answer1| to answer
	Then it should open a research in comparison to the beginning of my answer
	And I should see a button "OK" to validate my answer
{code}

{code}
Scenario: Validate |answer1|
	Given I added |answer1|
	When I click on "OK" button
	Then It should ask me |question2|
	And I should see five |choice1|:
	| Discover 					|
	| Travel 					|
	| Brew 						|
	| Share						|
	|A little bit of the four	|
{code}

{code}
Scenario: Go back |question1| step
	Given I'm at |question2| step
	When I click on arrow
	Then I should go back to |question1| step
{code}

{code}
Scenario: Restart
	Given I'm at |question2| step
	When I click on "Restart" button
	Then I should go back to |question1| step 
{code}

{code}
Scenario: Click on a |choice1|
	Given I'm at |question2| step
	When I select a |choice1|
	Then the list of products should be edited in comparison to previous answers 
	And it should ask me |question3|
	And I should see fives |choice2|:
	|Curious					|
	|Classical					|
	|Well living				|
	|Collector					|
	|A little bit of the four	|
{code}

{code}
Scenario: Go back |question2| step
	Given I'm at |question3| step
	When I click on arrow
	Then I should go back to |question2| step
{code}

{code}
Scenario: Restart
	Given I'm at |question3| step
	When I click on "Restart" button
	Then I should go back to |question1| step 
{code}

{code}
Scenario: Click on a |choice2|
	Given I'm at |question3| step
	When I select a |choice2|
	Then the list of products should be edited in comparison to previous answers 
	And I should see a sentence to announce end of gift wizard
{code}
