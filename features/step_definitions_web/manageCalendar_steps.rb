When /^I click add calendar$/ do
	on(EditProfilePage).click_add_calendar
end

When /^I click add by URL$/ do
	on(EditProfilePage).click_add_by_url
end

When /^I enter (.+) as calendar name$/ do |name|
	name = @app[name] ? @app[name] : name
	on(EditProfilePage).enter_calendar_name name
end

When /^I enter (.+) as calendar URL$/ do |url|
	url =  @app[url] ? @app[url] : url
	on(EditProfilePage).enter_calendar_url url
end

When /^I click add$/ do
	on(EditProfilePage).click_add
end

Then /^calendar is added$/ do
	expect(on(EditProfilePage).calendar_added).to eq true
end

When /^I delete imported calendars in case of failure$/ do
	while on(EditProfilePage).first_calendar_status
		steps %Q{
			When I delete calendar
		}
	end
end

When /^I delete calendar$/ do
	on(EditProfilePage).click_delete_calendar
	on(EditProfilePage).click_confirm_delete
	expect(on(EditProfilePage).calendar_deleted).to eq true
end

When /^I click edit calendar$/ do
	on(EditProfilePage).click_edit_calendar
end

When /^I click update$/ do
	on(EditProfilePage).click_update
end

Then /^calendar is updated$/ do
	expect(on(EditProfilePage).calendar_added).to eq true
end

When /^I click import calendar$/ do
	on(EditProfilePage).click_import_calendar
end

When /^I upload calendar (.+)$/ do |file|
	file =  @app[file] ? @app[file] : file
	on(EditProfilePage).upload_calendar file
end