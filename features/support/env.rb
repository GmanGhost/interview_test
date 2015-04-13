#require 'cucumber/formatter/unicode'
require 'capybara'
require 'capybara/dsl'
require 'capybara/session'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec'


Capybara.ignore_hidden_elements = true
Capybara.default_wait_time = 15
#Capybara.app_host = 'http://translate.google.ru/'


Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new # только если мы хотим создать ноый профиль для FF.
  #Selenium::WebDriver::Firefox.path = File.expand_path('~/path/to/firefox') # можем не указывать, тогда будет вызван FF по умолчанию.
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
end
Capybara.default_driver = :selenium


