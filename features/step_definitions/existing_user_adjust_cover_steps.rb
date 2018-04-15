Then(/^I am redirected to the dashboardCovers page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/dashboard/covers"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/dashboard/covers' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end

And(/^adjust the slider "([^"]*)" by "([^"]*)"$/) do |slider, distance|
  on(AdjustCover).slide_by(slider, distance)
end

And(/^I click "([^"]*)"$/) do |text|
  on(AdjustCover).button(text)
end


When(/^I scroll down$/) do
  on(AdjustCover).scroll
end

Then(/^I am redirected to the history page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/dashboard/history"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/dashboard/history' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end

And(/^I unlock the sliders$/) do
  on(AdjustCover).unlock_sliders
end