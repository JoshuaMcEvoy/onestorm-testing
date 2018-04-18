require 'watir'

Before do
  @browser = Watir::Browser.new :firefox
  @browser.wait 50
  @browser.driver.manage.window.maximize
end

After do
  @browser.close
end
