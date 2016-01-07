Feature: Test calendars features
  I want to test all calendars features
 
 Background:
	Given I setup timeout for pages
	  And I sign in
	  And I open profile

 Scenario: Add by URL
	And I delete imported calendars in case of failure
	And I click add calendar
	And I click add by URL
	And I enter URL_CAL_NAME as calendar name
	And I enter CAL_URL as calendar URL
	And I click add
	Then calendar is added
    
	
 Scenario: Edit by URL
	And I click edit calendar
	And I enter URL_CAL_NAME as calendar name
	And I enter CAL_URL as calendar URL
	And I click update
	Then calendar is updated
	
 Scenario: Delete calendar
	And I delete calendar
	
 Scenario: Import calendar
	And I delete imported calendars in case of failure
	And I click add calendar
	And I click import calendar
	And I enter IMPORT_CAL_NAME as calendar name
	And I upload calendar CAL_FILE
	And I click add
	Then calendar is added
    
	
 Scenario: Edit by URL
	And I click edit calendar
	And I enter IMPORT_CAL_NAME as calendar name
	And I upload calendar CAL_FILE
	And I click update
	Then calendar is updated
	
 Scenario: Delete calendar
	And I delete calendar