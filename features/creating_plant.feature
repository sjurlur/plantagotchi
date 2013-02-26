Feature: Creating plants
	In order to create new plants
	As a user
	I want to make new ones

	Scenario: Creating a plant
		Given I am on the home page
		When I follow "New plant"
		And I fill in "name" with "Cobraplant"
		And I fill in "location" with "stue"
		And I fill in "type" with "Tomato"
		And I press "Create Plant"
		Then I should see "Plant has been created"
		Then I should be on the plant page for "Cobraplant"