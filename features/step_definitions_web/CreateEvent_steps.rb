Given /^I am on CreateEvent page$/ do
  base_url = @app['SITE']  
  visit(CreateEvent page, using_params: {base_url: base_url})
end

When /^I click create event$/ do
  on(CreateEventPage).click_create_event
end

When /^I fill eventname with (.+)$/ do |eventname|
  on(CreateEventPage).fill_eventname 
end

When /^I fill description with (.+)$/ do |description|
  on(CreateEventPage).fill_description
end

When /^I fill  must readbefore meeting with (.+)$/ do |readbefore|
  on(CreateEventPage).fill_readbefore
end

When /^I fill duration with (.+)$/ do |duration|
  on(CreateEventPage).fill_duration
end

When /^I select timezone$/ do
  on(CreateEventPage).select_timezone
end


When /^I fill timeslots with (.+)$/ do |timeslots|
  on(CreateEventPage).fill_timeslots
end 
 
When /^I fill startingtime with (.+)$/ do |startingtime|
  on(CreateEventPage).fill_startingtime
end

When /^I fill attendant with (.+)$/ do |attendant|
  on(CreateEventPage).fill_attendant
end

When /^I click mandatory$/ do
  on(CreateEventPage).click_mandatory
end

When /^I fill tags with (.+)$/ do |tags|
  on(CreateEventPage).fill_tags
end

When /^I click createevent$/ do
  on(CreateEventPage).click_createevent
end

Then /^event is created$/ do
expect(on(CreateEventPage).createeventsuccesfull).to eq true
end

Then /^There is Error$/ do
  expect(on(CreateEventPage).ErrorMessage).to eq true
end

