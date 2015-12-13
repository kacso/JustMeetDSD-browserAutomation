Given /^I am on Login page$/ do
  base_url = @app['SITE']  
  visit(LoginPage, using_params: {base_url: base_url})
end

When /^I enter (.+) username$/ do |username|
  username = username == 'valid' ? @client['USERNAME'] : username
  on(LoginPage).set_username username
end

When /^I enter (.+) password$/ do |password|
  password = password == 'valid' ? @client['PASSWORD'] : password
  on(LoginPage).set_password password
 end
 
 When /^I click on login$/ do
  on(LoginPage).click_login
end


Given /^I sign in$/ do
  steps %Q{
    Given I setup timeout for pages
	And I am on Login page
	And Login page has expected title
	When I enter valid username
	And I enter valid password
	And I click on login
  }
end

Then /^error message is present$/ do
expect(on(LoginPage).errorMessagePresent).to eq true
end