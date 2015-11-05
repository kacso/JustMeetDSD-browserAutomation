Feature: manage login
  I want to test all login features

  Background:
    Given I setup timeout for pages
	  And I am on Login page
	  And Login page has expected title
      
  Scenario: Successful login
    When I enter valid username
      And I enter valid password
      And I click on login
    Then Home page has expected title

  Scenario: logout
    Given I sign in
    When I log out
    Then Login page has expected title     
	
  Scenario: Unseccesful login
	When I enter d@e.g username
	And I enter aaa password
	And I click on login
	Then Login page has expected title
	
	Then error message is present
	
  
	
  