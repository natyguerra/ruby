require 'rspec'
require 'cucumber'
# require 'page-object'
# require 'data_magic'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'

# World(PageObject::PageFactory)

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 15

Capybara.page.driver.browser.manage.window.maximize