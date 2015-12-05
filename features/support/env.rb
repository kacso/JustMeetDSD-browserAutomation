# before all

require 'rspec/expectations'
require 'bundler/setup'
require 'page-object'
require 'page-object/page_factory'
require 'watir-webdriver'
require 'yaml'

World(PageObject::PageFactory)

app = YAML.load_file('config/application.yml')
client = YAML.load_file('config/secretapplication.yml')

def remove_env_proxy
	if not ENV['http_proxy'].nil?
		ENV['http_proxy'] = nil
	elsif not ENV['HTTP_PROXY'].nil?
		ENV['HTTP_PROXY'] = nil
	end
end
def get_env_proxy
	if not ENV['http_proxy'].nil?
		ENV['http_proxy']
	elsif not ENV['HTTP_PROXY'].nil?
		ENV['HTTP_PROXY']
	end
end

def local_browser
  labels = ['firefox','phantomjs','chrome','ie']
  if labels.include?(@app['BROWSER_LABEL'])
	if @app['BROWSER_LABEL'] == 'phantomjs'
		switches = ["--webdriver-loglevel=NONE","--proxy=#{get_env_proxy}"] 	
	end
	browser_label = @app['BROWSER_LABEL'].to_sym	
  else
    raise "Missing or wrong variable BROWSER_LABEL. We support: #{labels.to_s}."
  end
  remove_env_proxy
  if @app['BROWSER_LABEL'] == 'phantomjs'
    browser = Watir::Browser.new browser_label, :args => switches
  else
    browser = Watir::Browser.new browser_label  
  end
  browser.window.maximize
  browser
end

Before do |scenario|
  @app = app
  @client = client
  @browser = local_browser
end

After do |scenario|
  if scenario.failed?
      encoded_img = @browser.screenshot.base64
      embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
  @browser.close
  #Cucumber.wants_to_quit = true if scenario.failed?
end