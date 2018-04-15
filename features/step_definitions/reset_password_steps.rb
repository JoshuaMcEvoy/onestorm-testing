Given(/^I am on the reset password page$/) do
  visit ResetPassword
  sleep 3
end


And(/^I populate password fields with data$/) do
  on(ResetPassword).fill_out
end

Then(/^I will be redirected to the dashboard page$/) do
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/resetpassword" && @browser.driver.find_element(:xpath => "//div[@class='Error']")
    on(ResetPassword).fill_out_alt
  else
    if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/dashboard"
      puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/dashboard' ")
    else
      fail("Redirect failed, current url: #{@browser.driver.current_url}")
    end
  end
end

And(/^I click button with text (.*)$/) do |text|
  on(ResetPassword).click(text)
end