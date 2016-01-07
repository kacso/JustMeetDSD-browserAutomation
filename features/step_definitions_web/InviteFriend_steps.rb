Given /^I am on Home page$/ do
  base_url = @app['SITE']  
  visit(HomePage, using_params: {base_url: base_url})
end

When /^I click invite friends$/ do
  on(HomePage).click_invite_friends
end

When /^I fill friend email with (.+)$/ do |email|
  on(HomePage).fill_friend_email email
end

When /^I click invite$/ do 
  on(HomePage).click_invite
end

Then /^email is sent$/ do 
  expect(on(HomePage).emailsent).to eq true
end

Then /^email is not sent$/ do
  expect(on(HomePage).emailsent).to eq false
end