 Feature: Create event
  I want to test all create event features

  Background:
	Given I setup timeout for pages
    And I sign in
	And I click new event
	
Scenario: Add new event
	And I fill event name with pizza
	And I fill description with all invited
	And I fill must read before meeting with place
	And I fill duration with 50
	And I select timezone +01:00
	And I fill timeslots with 2016-07-10
	And I fill starting time with 14:40
	And I click add new timeslot
	And I fill 1. attendant with t@t.t
	And I click mandatory
	And I click add new attendant
	And I fill 2. attendant with t2@t.t
	And I fill tags with #pizza
	And I click create event
	Then event is created
	
Scenario: Schedule event with event name forgotten
	And I fill description with all invited
	And I fill must read before meeting with place
	And I fill duration with 50
	And I select timezone +01:00
	And I fill timeslots with 2016-07-10
	And I fill starting time with 14:40
	And I fill 1. attendant with t@t.t
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then Create event is not created
	
Scenario: Schedule event without description
	And I fill event name with pizza
	And I fill must read before meeting with place
	And I fill duration with 50
	And I select timezone +01:00
	And I fill timeslots with 2016-07-10
	And I fill starting time with 14:40
	And I fill 1. attendant with t@t.t
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	Then Create event is not created
	
Scenario: Schedule event with duration forgotten
	And I fill event name with pizza
	And I fill description with all invited
	And I fill must read before meeting with place
	And I leave duration field empty
	And I select timezone +01:00
	And I fill timeslots with 2016-07-10
	And I fill starting time with 14:40
	And I fill 1. attendant with t@t.t
	And I click mandatory
	And I fill tags with #pizza
	And I click create event
	
	Then Create event is not created
	
Scenario: Schedule event with missing attendant’s e-mail
	And I fill event name with pizza
	And I fill description with all invited
	And I fill must read before meeting with place
	And I fill duration with 50
	And I select timezone +01:00
	And I fill timeslots with 2016-07-10
	And I fill starting time with 14:40
	And I fill tags with #pizza
	And I click create event
	
	Then Create event is not created