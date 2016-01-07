class HomePage
  include PageObject
  page_url '<%=params[:base_url]%>/#/home/'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout

  link(:logout, :text => "Logout")
  link(:userProfile, :href => "#/userProfile")
  link(:invite_friends, :xpath => '//*[@id="inviteFriends"]/a')
  text_field(:friend_email, :xpath => '/html/body/div[7]/div/div/div/form/div[1]/input') 
  button(:invite, :xpath => '//*[@id="invite"]')
  div(:friend_invited, :text => 'Friend invited')
  link(:create_event, :xpath => '//*[@id="newEvent"]')
  
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
  
  def fill_friend_email(value)
	friend_email_element.when_visible(timeout = @@load_timeout)
	self.friend_email = value
  end
  
  def click_invite
    invite_element.when_visible(timeout = @@load_timeout)
    invite
  end
  
  def emailsent
	sleep(1)
	friend_invited?
	end
	
  def fill_emailentered(value)
	emailentered_element.when_visible(timeout = @@load_timeout)
	self.emailentered = value
  end
  
  def click_new_event
	create_event_element.when_visible(timeout = @@load_timeout)
	create_event
  end
end
