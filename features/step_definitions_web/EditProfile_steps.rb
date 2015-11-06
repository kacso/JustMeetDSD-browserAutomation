When /^I click account$/ do
  on(MainPage).click_account
end

When /^I click personal info$/ do
  on(MainPage).click_personal_info
end

When /^I click option$/ do
  on(MainPage).click_option
end

When /^I fill AboutMe with (.+)$/ do |AboutMe|
  on(MainPage).fill_AboutMe AboutMe
end




