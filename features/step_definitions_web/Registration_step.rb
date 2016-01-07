When /^I click create account$/ do
  on(LoginPage).click_create_account
end

When /^I fill name with (.+)$/ do |name|
  on(RegistrationPage).fill_name name
end

When /^I fill surname with (.+)$/ do |surname|
  on(RegistrationPage).fill_surname surname
end

When /^I fill password with (.+)$/ do |password|
  on(RegistrationPage).fill_password password
end
When /^I fill email with (.+)$/ do |email|
  on(RegistrationPage).fill_email email
end
When /^I click signup$/ do
  on(RegistrationPage).click_signup
end

Then /^User is registrated$/ do
  expect(on(RegistrationPage).registrationsuccesfull).to eq true
end

Then /^Error is displayed$/ do
  expect(on(RegistrationPage).registrationsuccesfull).to eq false
end





