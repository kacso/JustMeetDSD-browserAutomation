Given /^I am on Home page$/ do
  base_url = @app['SITE']  
  visit(HomePage, using_params: {base_url: base_url})
end

When /^I click invite friends$/ do
  on(HomePage).click_invite_friends
end

When /^I fill friend email with (.+)$/ do |email|
  on(HomePage).fill_Femail Femail
end

When /^I click blue button$/ do 
  on(HomePage).click_blue_button
end

Then /^email is sent$/ do 
  expect(on(HomePage).emailsent).to eq true
end

When /^I fill friend email already entered with (.+)$/ do |emailentered|
  on(HomePage).fill_emailentered emailentered
end

Then /^Error appears$/ do
  expect(on(HomePage).Error).to eq true
end