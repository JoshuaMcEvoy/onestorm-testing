require 'watir'

Before do
  @browser = Watir::Browser.new :firefox
  @browser.wait 50
end

After do
  @browser.close
end
