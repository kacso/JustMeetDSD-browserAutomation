class MainPage
  include PageObject
  page_url '<%=params[:base_url]%>/#/userProfile' 
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
   text_field(:username, :xpath => '//*[@id="login-page"]/div/div/form/input[1]')
   text_field(:password, :xpath => '//*[@id="login-page"]/div/div/form/input[2]')
   text_field(:aboutme, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[4]/input') 
   text_field(:oldpassword, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[6]/input') 
   text_field(:newpassword, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[8]/input') 
   button(:signup, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[3]/button[1]')
   div(:change, :xpath  => 'The new settings were updated')   
  
  def has_expected_title
    logout_element.when_visible(timeout = @@load_timeout)
    has_expected_title?
  end

  def set_load_timeout(value)
    @@load_timeout = value
  end

  def fill_aboutme(value)
	aboutme_element.when_visible(timeout = @@load_timeout)
	self.aboutme = value
  end
  
   def fill_oldpassword(value)
	oldpassword_element.when_visible(timeout = @@load_timeout)
	self.oldpassword = value
  end
  
  def fill_newpassword(value)
	newpassword_element.when_visible(timeout = @@load_timeout)
	self.newpassword = value
  end
  
  def click_save
		save_element.when_visible(timeout = @@load_timeout)
		save
  end
  
  def changesaved
		changesaved?
  end
  
  
 end