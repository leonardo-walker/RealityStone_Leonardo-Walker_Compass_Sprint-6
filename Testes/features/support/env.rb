require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__)+ "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']


Capybara.register_driver :my_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.args << '--incognito'
    options.args << '--start-maximized'
    options.args << '--window-size=1420,835'
    if ENV['HEADLESS']
        options.args << '--headless'
    end
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :options => options)
end

Capybara.default_driver = :selenium_chrome
Capybara.app_host = URL 