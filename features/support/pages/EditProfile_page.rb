class EditProfilePage
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
   
   button(:add_calendar, :text => 'Add calendar')
   button(:by_URL, :text => 'By URL')
   button(:import_calendar, :text => 'Import calendar')
   
   text_field(:calendar_name, :xpath => '/html/body/div[7]/div/div/div/div[2]/div[2]/form/div[1]/div/input')
   text_field(:iCal_URL, :xpath => '/html/body/div[7]/div/div/div/div[2]/div[2]/form/div[2]/div/input')
   button(:add, :xpath => '/html/body/div[7]/div/div/div/div[3]/div/button')
   
   div(:calendarAdded, :text => 'Added')
   button(:editCalendar, :xpath => '//*[@id="main-content"]/section/div/div/div/div[1]/div/div/div[1]/table/tbody/tr/td/div/button[1]')
   button(:deleteCalendar, :xpath => '//*[@id="main-content"]/section/div/div/div/div[1]/div/div/div[1]/table/tbody/tr/td/div/button[2]')
   button(:confirmDelete, :text => 'Delete')
   div(:calendarDeleted, :text => 'Deleted')
   div(:loading, :xpath => '/html/body/div[7]/div/div/div/div[3]/div/div')
   button(:update, :text => 'Update')
  
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
  
  def click_add_calendar
	add_calendar_element.when_visible(timeout = @@load_timeout)
	add_calendar
  end
  
  def click_add_by_url
	by_URL_element.when_visible(timeout = @@load_timeout)
	by_URL
  end

  def click_import_calendar
	import_calendar_element.when_visible(timeout = @@load_timeout)
	import_calendar
  end  
  
  def enter_calendar_name(name)
	calendar_name_element.when_visible(timeout = @@load_timeout)
	self.calendar_name = name
  end
  
  def enter_calendar_url(url)
	iCal_URL_element.when_visible(timeout = @@load_timeout)
	self.iCal_URL = url
  end
  
  def upload_calendar(path)
	
  end
  
  def click_add
	add_element.when_visible(timeout = @@load_timeout)
	add
  end
  
  def calendar_added
	wait_until { !loading? }
	#puts calendarAdded?
	#puts editCalendar?
	calendarAdded? and editCalendar?
  end
  
  def first_calendar_status
	sleep(1)
	editCalendar?
  end
  
  def click_delete_calendar
	deleteCalendar_element.when_visible(timeout = @@load_timeout)
	deleteCalendar
  end
  
  def click_confirm_delete
	confirmDelete_element.when_visible(timeout = @@load_timeout)
	confirmDelete
  end
  
  def calendar_deleted
	#add_calendar_element.when_visible(timeout = @@load_timeout)
	wait_until { !loading? }
	sleep(1)
	calendarDeleted? and !editCalendar?
  end
  
  def click_edit_calendar
	editCalendar_element.when_visible(timeout = @@load_timeout)
	editCalendar
  end
  
  def click_update
	update_element.when_visible(timeout = @@load_timeout)
	update
  end
 end