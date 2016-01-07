Given /^I am on Main page$/ do
  base_url = @app['SITE']  
  visit(EditProfilePage, using_params: {base_url: base_url})
end

When /^I click account$/ do
  on(EditProfilePage).click_account
end

When /^I click personalinfo$/ do
  on(EditProfilePage).click_personal_info
end

When /^I click options$/ do
  on(EditProfilePage).click_options
end

When /^I fill aboutme with (.+)$/ do |aboutme|
  on(EditProfilePage).fill_aboutme aboutme
end

When /^I click save$/ do 
  on(EditProfilePage).click_save
end

Then /^changes are saved$/ do 
  expect(on(EditProfilePage).changesaved).to eq true
end

And /^I open profile$/ do
  on(EditProfilePage).click_profile
end

When /^I fill oldpassword with (.+)$/ do |oldpassword|
  on(EditProfilePage).fill_oldpassword oldpassword
end

When /^I fill newpassword with (.+)$/ do |newpassword|
  on(EditProfilePage).fill_newpassword newpassword
end

Then /^Error is showed$/ do
  expect(on(EditProfilePage).ErrorMessage).to eq true
end
