Feature: manage registration
  I want to test all registration features

Background:
    Given I setup timeout for pages
	And I am on Login page
	And Login page has expected title
	
Scenario: Registration
When I click create account
And I fill name with Test2
And I fill surname with test1
And I fill password with 123
And I fill email with v@v.v
And I click signup
Then User is registrated

Scenario: Registration mail missing
When I click create account
And I fill name with Test2
And I fill surname with test1
And I fill password with 123
And I click signup
Then Error is displayed

Scenario: Registration password missing
When I click create account
And I fill name with Test2
And I fill surname with test1
And I fill email with v@v.v
And I click signup
Then Error is displayed

Scenario: Registration name missing
When I click create account
And I fill surname with test1
And I fill password with 123
And I fill email with v@v.v
And I click signup
Then Error is displayed

Scenario: Registration surname missing
When I click create account
And I fill name with test1
And I fill password with 123
And I fill email with v@v.v
And I click signup
Then Error is displayed




And I wait for 10 seconds