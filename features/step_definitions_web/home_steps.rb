Given /^I am on Home page$/ do
	base_url = @app['SITE']
	visit(HomePage, using_params: {base_url: base_url})
end

When /^I log out$/ do
	sleep(1)
	on(HomePage).click_logout
end

When /^I click new event$/ do
  on(HomePage).click_new_event
end
