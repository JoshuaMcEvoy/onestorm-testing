And(/^I click the link "([^"]*)"$/) do |text|
  on(DashboardPage).click_link(text)
end

Then(/^I am redirected to the login page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end