class MainPage
  include PageObject
  page_url '<%=params[:base_url]%>/#/userProfile' 
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
   button(:account, :xpath => '//*[@id="nav-accordion"]/li[1]/a')
   button(:personalinfo, :xpath => '//*[@id="nav-accordion"]/li[1]/ul/li[2]/a')
   button(:options, :xpath => '//*[@id="main-content"]/section/div/div/div/div[1]/div/div/div[3]/button')
   text_field(:aboutme, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[4]/input')   
   text_field(:oldpassword, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[6]/input') 
   text_field(:newpassword, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[8]/input') 
   button(:save, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[3]/button[1]')
   div(:change, :text  => 'The new settings were updated')   
   link(:profile, :id => 'profileImage')
  
  def has_expected_title
    has_expected_title?
  end

  def set_load_timeout(value)
    @@load_timeout = value
  end
  
  def click_account
	account_element.when_visible(timeout = @@load_timeout)
	account
  end
  
  def click_personalinfo
	personalinfo_element.when_visible(timeout = @@load_timeout)
	personalinfo
  end
  
  def click_options
	options_element.when_visible(timeout = @@load_timeout)
	options
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
	sleep(1)
	change?
  end
  
  def click_profile
	profile_element.when_visible(timeout = @@load_timeout)
	profile
  end
  
  def ErrorMessage
		error?
	end
  
 end