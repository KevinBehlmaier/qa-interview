require 'rubygems'
require 'bundler/setup'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'selenium-webdriver'
require 'pry'

Capybara.register_driver :selenium do |app|
  @driver = Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver        = :selenium
end
