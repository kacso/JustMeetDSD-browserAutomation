 Feature: manage login
  I want to test all login features

  Background:
	Given I setup timeout for pages
	And I am on Main page
	And Main page has expected title

Scenario: Edit Profile
When I click account
And I click personal info
And I click option
And I fill aboutme with I_like_this_app
And I fill oldpassword with 123
And I fill newpassword with 321
And I click save
Then changes are saved
