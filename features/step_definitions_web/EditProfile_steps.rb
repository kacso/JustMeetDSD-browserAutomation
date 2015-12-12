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

When /^I click account$/ do
  on(MainPage).click_account
end

When /^I click personal info$/ do
  on(MainPage).click_personal_info
end

When /^I click option$/ do
  on(MainPage).click_option
end

When /^I fill aboutme with (.+)$/ do |aboutme|
  on(MainPage).fill_aboutme aboutme
end

When /^ I fill oldpassword with (.+)$/ do |oldpassword|
  on(MainPage).fill_oldpassword oldpassword
end

When /^ I fill newpassword with (.+)$/ do |newpassword|
  on(MainPage).fill_newpassword newpassword
end

When /^ I click save$/ do 
  on(MainPage).click_save
end

Then /^ changes are saved$/ do 
  expect(on(MainPage).changesaved).to eq true
end
