And (/^I click the div (.*)$/)do |text|
  on(DashboardPage).click_div(text)
end

Then (/^I am redirected to the change history page$/)do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/dashboard/history"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/dashboard/history' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end
