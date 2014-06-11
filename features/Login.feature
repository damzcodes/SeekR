Feature: Login 

	Background:
		Given a User "ngo_user@example.org" is already registered

	Scenario: A user logs in 
		Given I am on the homepage
			And I follow the login link
		When I enter my email as "ngo_user@example.org"
			And my password is "password"
		Then I should be logged in