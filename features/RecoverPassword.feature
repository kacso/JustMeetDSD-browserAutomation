Feature: manage RecoverPassword
  I want to test all RecoverPassword features
 
 Background:
    Given I setup timeout for pages
	  And I am on Login page
	  And Login page has expected title

 Scenario: Recover Password
    When I click recover password
	And I enter email
	And I click sendemail
      Then mail with new password is sent