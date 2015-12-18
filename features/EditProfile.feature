 Feature: Edit profile
  I want to test all edit profile features

  Background:
	Given I setup timeout for pages
    And I sign in
	And I open profile
	And Main page has expected title

Scenario: Add personal information
	When I click options
	And I fill aboutme with I_like_this_app
	And I click save
	Then changes are saved

Scenario: Edit Password
	When I click options
	And I fill oldpassword with l
	And I fill newpassword with 321
	And I click save
	Then changes are saved

Scenario: Wrong old Password
	When I click options
	And I fill oldpassword with xxx
	And I fill newpassword with 321
	And I click save
	Then Error is displayed

	And I wait for 10 seconds