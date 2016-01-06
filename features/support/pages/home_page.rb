class HomePage
  include PageObject
  page_url '<%=params[:base_url]%>/#/home/'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout

  link(:logout, :text => "Logout")
  link(:userProfile, :href => "#/userProfile")
  button(:invite_friends, :xpath => '//*[@id="inviteFriends"]/a/span[1]')
  text_field(:friend_email, :xpath => '//*[@id="inviteFriends"]/ul/form/div/input') 
  button(:blue_button, :xpath => '//*[@id="inviteFriends"]/ul/form/div/span/button/i')
  div(:emailsent, :text => 'Friend invited')
  
  def has_expected_title
    logout_element.when_visible(timeout = @@load_timeout)
    has_expected_title?
  end

  def set_load_timeout(value)
    @@load_timeout = value
  end

  def click_logout
    logout_element.when_visible(timeout = @@load_timeout)
    logout
  end
  
  def click_invite_friends
    invite_friends_element.when_visible(timeout = @@load_timeout)
    invite_friends
  end
  
  def fill_Femail(value)
	Femail_element.when_visible(timeout = @@load_timeout)
	self.Femail = value
  end
  
  def click_blue_button
    blue_button_element.when_visible(timeout = @@load_timeout)
    blue_button
  end
  
  def emailsent
	sleep(1)
	email
	end
	
  def fill_emailentered(value)
	emailentered_element.when_visible(timeout = @@load_timeout)
	self.emailentered = value
  end
   
 def Error
		error?
	end
  
   def click_
    invite_friends_element.when_visible(timeout = @@load_timeout)
    invite_friends
  end
  
end
