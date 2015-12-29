class RecoverPasswordPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
  text_field(:email, :xpath => '//*[@id="login-page"]/div/div/form[2]/input')
  button(:sendemail, :xpath => '//*[@id="login-page"]/div/div/form[2]/button')
  div(:success_message, :text  => 'Email sent successfully')

  def has_expected_title
	email_element.when_visible(timeout = @@load_timeout)
	has_expected_title?
  end 
  
  def set_load_timeout(value)
    @@load_timeout = value
  end    
  
  def set_email(email)
	email_element.when_visible(timeout = @@load_timeout)
	self.email = email
  end  
	
  def click_sendemail
	sendemail_element.when_visible(timeout = @@load_timeout)
	sendemail
  end
	

  def newpasswordsuccesfull
	sleep(2)
	success_message?
  end
	
end