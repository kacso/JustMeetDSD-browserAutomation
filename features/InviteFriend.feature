Feature: Invite friend
  I want to test all invite friend features

  Background:
	Given I setup timeout for pages
    And I sign in
	When I click invite friends
	
Scenario: send an email
	And I fill friend email with co@co.co
	And I click invite
	Then email is sent

Scenario: inviting existing user
	And I fill friend email with x@x.x
	And I click invite
	Then email is not sent
	
Scenario: wrong format email
	And I fill friend email with x
	And I click invite
	Then email is not sent