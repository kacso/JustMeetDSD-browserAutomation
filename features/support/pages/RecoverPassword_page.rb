class RecoverPasswordPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
  text_field(:email, :xpath => '//*[@id="login-page"]/div/div/form[2]/input')
  button(:recoverpassword, :type => 'submit')
  div(:newpassword, :xpath  => 'Email sent successfully')

def enter_email(email)
		email_element.when_visible(timeout = @@load_timeout)
		self.email = email
	end  
	
def click_sendemail
		sendemail_element.when_visible(timeout = @@load_timeout)
		sendemail
	end
	

def newpasswordsuccesfull
		newpassword?
	end
	
end