Given(/^that I am on the landing page$/) do
  visit CheckPolicyPage
end

When(/^I populate policy fields with data$/) do
  on(CheckPolicyPage).fill_out
end




Then(/^I am redirected to the premium page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/premiums"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/premiums' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end

Then(/^I am redirected to the products page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/products"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/products' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end

end

And(/^I click next$/) do
  on(ProductsPage).click_next
end

When(/^I modify first product by (\d+) precent$/) do |number|
  on(ProductsPage).slide_first_by number
end

Then(/^I am redirected to the customer page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/customer"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/customer' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end

When(/^I populate customer fields with data$/) do
  on(CustomerPage).fill_out
end

Then(/^I am redirected to the house page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/house"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/house' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end


When(/^I populate house fields with data$/) do
  on(HousePage).fill_out
end

Then(/^I am redirected to the insurance page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/insurance"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/insurance' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end


When(/^click the agree checkbox$/) do
  on(InsurancePage).checkbox_click
end

Then(/^I am redirected to the policy page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/policy"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/policy' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end

When(/^I click the change link$/) do
  on(CustomerPage).click_change
end

When(/^I click on another product$/) do
  on(ProductsPage).change_premium
end

Then(/^I am redirected to the landing page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end

