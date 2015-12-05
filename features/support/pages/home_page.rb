class HomePage
  include PageObject
  page_url '<%=params[:base_url]%>/#/home/'
  expected_title "JustMeet - Project for SCORE"
  @@load_timeout

  link(:logout, :text => "Logout")
  link(:userProfile, :href => "#/userProfile")

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
end
