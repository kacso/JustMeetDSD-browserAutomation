 When /^I click recover password$/ do
  on(LoginPage).click_recover_password
  end
  
 When /^I enter (.+) email$/ do |email|
  email = email == 'valid' ? @client['EMAIL'] : email
  on(RecoverPasswordPage).set_email email
end

 When /^I click sendemail$/ do
  on(RecoverPasswordPage).click_sendemail
  end
  
Then /^mail with new password is sent$/ do
expect(on(RecoverPasswordPage).newpasswordsuccesfull).to eq true
end
