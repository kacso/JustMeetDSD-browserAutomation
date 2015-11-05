class RegistrationPage
  include PageObject
  page_url '<%=params[:base_url]%>'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
   text_field(:name, :xpath => '/html/body/div[3]/div/div/div/div[2]/form/div[1]/div/input')
   text_field(:surname, :xpath => '/html/body/div[3]/div/div/div/div[2]/form/div[2]/div/input')
   text_field(:email, :xpath => '/html/body/div[3]/div/div/div/div[2]/form/div[3]/div/input')
   text_field(:password, :xpath => '/html/body/div[3]/div/div/div/div[2]/form/div[4]/div/input')
   button(:signup, :xpath => '/html/body/div[3]/div/div/div/div[3]/button[1]')
   div(:registration, :text  => 'Member registered')   
   
  def has_expected_title
    name_element.when_visible(timeout = @@load_timeout) # ho messo name ma potevo mettere anche surname o gli altri
    has_expected_title?
  end

  def set_load_timeout(value)
    @@load_timeout = value
  end

	def fill_name(value)
	name_element.when_visible(timeout = @@load_timeout)
	self.name = value
	end
	
	def fill_surname(value)
	surname_element.when_visible(timeout = @@load_timeout)
    self.surname = value
	end
	
	def fill_email(value)
	email_element.when_visible(timeout = @@load_timeout)
    self.email = value
	end
	
	def fill_password(value)
	password_element.when_visible(timeout = @@load_timeout)
    self.password = value
	end
	
	def click_signup
	signup_element.when_visible(timeout = @@load_timeout)
	signup
	end
	
	def registrationsuccesfull
	registration?
	end
  
  
  
  
  
end