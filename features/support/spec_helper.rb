Selenium::WebDriver::Chrome.driver_path = "/usr/bin/chromedriver"
Capybara.default_selector = :css
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
