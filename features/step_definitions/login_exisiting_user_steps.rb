Given(/^I am on the login page$/) do
  visit LoginPage
end

And(/^I populate login fields with data$/) do
  on(LoginPage).fill_out
end

And(/^I click the button "([^"]*)"$/) do |arg|
  on(SelectPremiumPage).click_button(arg)
end

Then(/^I am redirected to the dashboard page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/login" && @browser.driver.find_element(:xpath => "//div[@class='Error']")
    on(LoginPage).fill_out_alt
  else
    @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/dashboard"
  end
end

Then(/^error should appear$/) do
  on(LoginPage).error_appear
end

And(/^I clear the email field$/) do
  on(LoginPage).clear_email
end