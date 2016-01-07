class CreateEventPage
  include PageObject
  page_url '<%=params[:base_url]%>/#/newEvent' 
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout
  
  
  text_field(:eventname, :xpath => '//*[@id="main-content"]/section/div/form/div[1]/div/input')
  textarea(:description, :xpath => '//*[@id="main-content"]/section/div/form/div[2]/div/textarea')
  textarea(:readbefore, :xpath => '//*[@id="main-content"]/section/div/form/div[3]/div/textarea')
  text_field(:duration, :xpath => '//*[@id="main-content"]/section/div/form/div[4]/div/input')
  select_list(:timezone, :xpath => '//*[@id="main-content"]/section/div/form/div[5]/div/select')
  text_field(:timeslots, :xpath => '//*[@id="main-content"]/section/div/form/div[6]/div/div[1]/div[1]/div/p/input')
  text_field(:startingtimeH, :xpath => '//*[@id="main-content"]/section/div/form/div[6]/div/div/div[2]/table/tbody/tr[2]/td[1]/input')
  text_field(:startingtimeM, :xpath => '//*[@id="main-content"]/section/div/form/div[6]/div/div/div[2]/table/tbody/tr[2]/td[3]/input')
  text_field(:attendant, :xpath => '//*[@id="main-content"]/section/div/form/div[7]/div/div/div/div[1]/input')
  checkbox(:mandatory, :xpath => '//*[@id="main-content"]/section/div/form/div[7]/div/div/div/div[2]/label/input')
  text_field(:tags, :xpath => '//*[@id="main-content"]/section/div/form/div[8]/div/input')
  button(:create_event, :xpath => '//*[@id="main-content"]/section/div/form/div[9]/input')
  div(:createvent, :text  => 'Event created')
  button(:add_timeslot, :xpath => '//*[@id="main-content"]/section/div/form/div[6]/div/div[1]/div[3]/button[1]')
  button(:add_attendant, :xpath => '//*[@id="main-content"]/section/div/form/div[7]/div/div[1]/div/div[3]/button[1]')
   
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
  
  def select_timezone(value)
	timezone_element.when_visible(timeout = @@load_timeout)
	#timezone_select(value)
	browser.select_list(:xpath => '//*[@id="main-content"]/section/div/form/div[5]/div/select').option(:text => value).select
  end 
  
  def fill_timeslots(value)
	timeslots_element.when_visible(timeout = @@load_timeout)
	self.timeslots = value
  end
  
  def fill_startingtime(hours, minutes)
	startingtimeH_element.when_visible(timeout = @@load_timeout)
	self.startingtimeH = hours
	self.startingtimeM = minutes
  end
  
  def fill_attendant(value, index)
	browser.text_field(:xpath => '//*[@id="main-content"]/section/div/form/div[7]/div/div[' + index + ']/div/div[1]/input').set value
  end
  
  def click_mandatory
	mandatory_element.when_visible(timeout = @@load_timeout)
	mandatory_element.check
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
  
  def add_new_timeslot
	add_timeslot_element.when_visible(timeout = @@load_timeout)
	add_timeslot
  end
  
  def add_new_attendant
	add_attendant_element.when_visible(timeout = @@load_timeout)
	add_attendant
  end
  
  def clear_duration
	duration_element.when_visible(timeout = @@load_timeout)
	duration_element.clear
  end
	
end 