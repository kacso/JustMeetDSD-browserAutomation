 Feature: manage login
  I want to test all login features

  Background:
	Given I setup timeout for pages
    And I sign in
	And I click account
	And I click personalinfo
	And Main page has expected title

Scenario: Edit Profile
	When I click options
	And I fill aboutme with I_like_this_app
	And I fill oldpassword with 123
	And I fill newpassword with 321
	And I click save
	Then changes are saved
	

	And I wait for 10 seconds