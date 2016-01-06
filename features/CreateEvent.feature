 Feature: Create event
  I want to test all create event features

  Background:
	Given I setup timeout for pages
    And I sign in
	And I open profile
	And Main page has expected title
	
Scenario: Add new event
	When I click create event
	And I fill event name with pizza
	And I fill description with all invited
	And I fill must read before meeting with place
	And I fill duration in minutes with 50
	And I select time zone
	And I fill time slots
	And I fill starting time with 14:40
	And I fill attendant with x@x.x
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then event is created
	
Scenario: Schedule event with event name forgotten
	When I click create event
	And I fill description with all invited
	And I fill must read before meeting with place
	And I fill duration in minutes with 50
	And I select time zone
	And I fill time slots
	And I fill starting time with 14:40
	And I fill attendant with x@x.x
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then Error is showed
	
Scenario: Schedule event without description
	When I click create event
	And I fill event name with pizza
	And I fill must read before meeting with place
	And I fill duration in minutes with 50
	And I select time zone
	And I fill time slots
	And I fill starting time with 14:40
	And I fill attendant with x@x.x
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then Error is showed
	
Scenario: Schedule event with duration forgotten
	When I click create event
	And I fill event name with pizza
	And I fill description with all invited
	And I fill must read before meeting with place
	And I select time zone
	And I fill time slots
	And I fill starting time with 14:40
	And I fill attendant with x@x.x
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then event is created
	
Scenario: Schedule event with missing attendant’s e-mail
	When I click create event
	And I fill event name with pizza
	And I fill description with all invited
	And I fill must read before meeting with place
	And I fill duration in minutes with 50
	And I select time zone
	And I fill time slots
	And I fill starting time with 14:40
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then event is created
	