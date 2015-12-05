class LoginPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout

  text_field(:username, :xpath => '//*[@id="login-page"]/div/div/form/input[1]')
  text_field(:password, :xpath => '//*[@id="login-page"]/div/div/form/input[2]')
  button(:login, :type => 'submit')

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
end
