class LoginPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout

  text_field(:username, :xpath => '//*[@id="login-page"]/div/div/form/input[1]')
  text_field(:password, :xpath => '//*[@id="login-page"]/div/div/form/input[2]')
  div(:error, :xpath => '/html/body/div[2]')
  button(:login, :type => 'submit')
   link(:create_account, :text => 'Create an account')

  def has_expected_title
	username_element.when_visible(timeout = @@load_timeout)
	has_expected_title?
  end
  
  def set_load_timeout(value)
    @@load_timeout = value
  end  
  
  def set_username(user)
    username_element.when_visible(timeout = @@load_timeout)
    self.username = user
  end
  
  def set_password(pass)
    password_element.when_visible(timeout = @@load_timeout)
    self.password = pass
  end
  
  def click_login
    login_element.when_visible(timeout = @@load_timeout)
    login
  end
  
  def errorMessagePresent
	error?
  end
  
  def click_create_account
	create_account_element.when_visible(timeout = @@load_timeout)
	create_account #metti solo il nome di quello che vuoi attivare
  end
  
end
