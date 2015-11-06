class EditProfile
  include PageObject
  page_url '<%=params[:base_url]%>' 
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
   text_field(:AboutMe, :xpath => '//*[@id="main-content"]/section/div/div/div/div[2]/div/form/div/div[1]/p[4]/input') 
  
  
  def has_expected_title
    logout_element.when_visible(timeout = @@load_timeout)
    has_expected_title?
  end

  def set_load_timeout(value)
    @@load_timeout = value
  end

  def fill_AboutMe(value)
	AboutMe_element.when_visible(timeout = @@load_timeout)
	self.AboutMe = value
  end
  
 end