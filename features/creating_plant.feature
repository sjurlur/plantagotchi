Feature: Creating plants
	In order to create new plants
	As a user
	I want to make new ones

	Scenario: Creating a plant
		Given I am on the home page
		When I follow "New plant"
		And I fill in "Name" with "Cobraplant"
		And I fill in "Location" with "stue"
		And I fill in "Type" with "Tomato"
		And I press "Create plant"
		Then I should see "Plant has been created"
		Then I should be on the plant page for "Cobraplant"