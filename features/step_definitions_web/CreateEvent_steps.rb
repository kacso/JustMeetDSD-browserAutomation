Given /^I am on CreateEvent page$/ do
  base_url = @app['SITE']  
  visit(CreateEvent page, using_params: {base_url: base_url})
end

When /^I click create event$/ do
  on(CreateEventPage).click_create_event
end

When /^I fill event name with (.+)$/ do |eventname|
  on(CreateEventPage).fill_eventname (eventname)
end

When /^I fill description with (.+)$/ do |description|
  on(CreateEventPage).fill_description(description)
end

When /^I fill must read before meeting with (.+)$/ do |readbefore|
  on(CreateEventPage).fill_readbefore(readbefore)
end

When /^I fill duration with (.+)$/ do |duration|
  on(CreateEventPage).fill_duration(duration)
end

When /^I select timezone (.+)$/ do |timezone|
  on(CreateEventPage).select_timezone(timezone)
end


When /^I fill timeslots with (.+)$/ do |timeslots|
  on(CreateEventPage).fill_timeslots(timeslots)
end 
 
When /^I fill starting time with (\d+):(\d+)$/ do |hours, minutes|
  on(CreateEventPage).fill_startingtime(hours, minutes)
end

When /^I fill (\d+). attendant with (.+)$/ do |index, attendant|
  on(CreateEventPage).fill_attendant(attendant, index)
end

When /^I click mandatory$/ do
  on(CreateEventPage).click_mandatory
end

When /^I fill tags with (.+)$/ do |tags|
  on(CreateEventPage).fill_tags(tags)
end

When /^I click createevent$/ do
  on(CreateEventPage).click_createevent
end

Then /^event is created$/ do
expect(on(CreateEventPage).createeventsuccesfull).to eq true
end

When /^I click add new timeslot$/ do
	on(CreateEventPage).add_new_timeslot
end

When /^I click add new attendant$/ do
	on(CreateEventPage).add_new_attendant
end

Then /^Create event is not created$/ do
	expect(on(CreateEventPage).createeventsuccesfull).to eq false
end

When /^I leave duration field empty$/ do
	on(CreateEventPage).clear_duration
end