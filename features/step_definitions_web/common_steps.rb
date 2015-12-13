Given /^I wait for (\d+) seconds$/ do |time|
  sleep(time.to_i)
end

Given /^I set (.+) page load timeout$/ do |page|
  on("#{page}Page").set_load_timeout @app['PAGE_TIMEOUT'].to_i
end

Then /^(.+) page has expected title$/ do |page|
  expect(on("#{page}Page").has_expected_title).to eq true
end

When /^I go back$/ do
	@browser.back
end

When /^I setup timeout for pages$/ do
	on(LoginPage).set_load_timeout @app['PAGE_TIMEOUT'].to_i
	on(HomePage).set_load_timeout @app['PAGE_TIMEOUT'].to_i
	on(RegistrationPage).set_load_timeout @app['PAGE_TIMEOUT'].to_i
	on(MainPage).set_load_timeout @app['PAGE_TIMEOUT'].to_i
end