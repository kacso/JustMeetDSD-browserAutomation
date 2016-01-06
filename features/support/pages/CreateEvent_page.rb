class CreateEventPage
  include PageObject
  page_url '<%=params[:base_url]%>/#/newEvent' 
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
  
  button(:create_event, :xpath => '//*[@id="newEvent"]')
  text_field(:eventname, :xpath => '//*[@id="main-content"]/section/div/form/div[1]/div/input')
  text_field(:description, :xpath => '//*[@id="main-content"]/section/div/form/div[2]/div/textarea')
  text_field(:readbefore, :xpath => '//*[@id="main-content"]/section/div/form/div[3]/div/textarea')
  text_field(:duration, :xpath => '//*[@id="main-content"]/section/div/form/div[4]/div/input')
   select_list(:timezone, :xpath => '//*[@id="main-content"]/section/div/form/div[5]/div/select')
   text_field(:timeslots, :xpath => '//*[@id="main-content"]/section/div/form/div[6]/div/div[1]/div[1]/div/p/input')
   text_field(:startingtime, :xpath => '//*[@id="main-content"]/section/div/form/div[6]/div/div[2]/div[2]/table/tbody/tr[2]/td[1]/input')
   text_field(:attendant, :xpath => '//*[@id="main-content"]/section/div/form/div[7]/div/div/div/div[1]/input')
   button(:mandatory, :xpath => '//*[@id="main-content"]/section/div/form/div[7]/div/div/div/div[2]/label/input')
   text_field(:tags, :xpath => '//*[@id="main-content"]/section/div/form/div[8]/div/input')
   button(:createevent, :xpath => '//*[@id="main-content"]/section/div/form/div[9]/input')
   div(:createvent, :text  => '')

   
 def has_expected_title
    has_expected_title?
  end

  def set_load_timeout(value)
    @@load_timeout = value
  end 
  
  def click_create_event
	create_event_element.when_visible(timeout = @@load_timeout)
	create_event
  end
  
  def fill_eventname(value)
	eventname_element.when_visible(timeout = @@load_timeout)
	self.eventname = value
  end
  
  def fill_description(value)
	description_element.when_visible(timeout = @@load_timeout)
	self.description = value
  end
  
  def fill_readbefore(value)
	readbefore_element.when_visible(timeout = @@load_timeout)
	self.readbefore = value
  end
  
 def fill_duration(value)
	duration_element.when_visible(timeout = @@load_timeout)
	self.duration = value
  end 
  
  def select_list(value)
	timezone_element_select_value.when_visible(timeout = @@load_timeout)
	self.timezone = value
  end 
  
  def fill_timeslots(value)
	timeslots_element.when_visible(timeout = @@load_timeout)
	self.timeslots = value
  end
  
  def fill_startingtime(value)
	startingtime_element.when_visible(timeout = @@load_timeout)
	self.startingtime = value
  end
  
  def fill_attendant(value)
	attendant_element.when_visible(timeout = @@load_timeout)
	self.attendant = value
  end
  
  def click_mandatory
	mandatory_element.when_visible(timeout = @@load_timeout)
	mandatory
  end
  
  def fill_tags(value)
	tags_element.when_visible(timeout = @@load_timeout)
	self.tags = value
  end
  
  def click_createevent
	createevent_element.when_visible(timeout = @@load_timeout)
	createevent
  end
  
  def createeventsuccesfull
	sleep(1)
	createvent?
  end
  
def ErrorMessage
		error?
	end
	
 end 