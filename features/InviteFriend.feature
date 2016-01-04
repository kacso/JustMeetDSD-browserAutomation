Feature: Invite friend
  I want to test all invite friend features

  Background:
	Given I setup timeout for pages
    And I sign in
	And I open profile
	And Home page has expected title
	
Scenario: send an email
	When I click invite friends
	And I fill friend email with co@co.co
	And I click blue button
	Then email is sent

Scenario: email already entered
	When I click invite friends
	And I fill friend email already entered with x@x.x
	And I click blue button
	Then Error appears 