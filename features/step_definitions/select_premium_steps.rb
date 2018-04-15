Given(/^I am on the select premium page$/) do
  visit SelectPremiumPage
end

Then(/^I am redirected to products page$/) do
  on(SelectPremiumPage)
end

And(/^I click on the button "([^"]*)"$/) do |btnName|
  on(SelectPremiumPage).click_button btnName
end

When(/^I click on a premium (.*)$/) do |product|
  on(SelectPremiumPage).select_premium product
end

When(/^I wait "([^"]*)" second$/) do |time|
  sleep time.to_i
end

And(/^I scroll to the button "([^"]*)"$/) do |btnName|
  on(SelectPremiumPage).scroll_to_button btnName
end

Then (/^I am redirected to details page$/) do
  on(SelectPremiumPage)
end


# Then(/^amount will change for "([^"]*)"$/) do |value|
#   on(SelectPremiumPage).value_change value
#   # puts value
# end

And(/^I fill in the first name field with (.*)$/) do |first_name|
  on(SelectPremiumPage).first_name first_name
end

And(/^I fill in the family name field with (.*)$/) do |family_name|
  on(SelectPremiumPage).family_name family_name
end

And(/^I fill in the phone number field with (.*)$/) do |phone_number|
  on(SelectPremiumPage).phone_number phone_number
end

And(/^I fill in the birthday fields$/) do
  on(SelectPremiumPage).birthday
end

And(/^I fill in the email field with (.*)$/) do |email_address|
  on(SelectPremiumPage).email email_address
end

# And(/^I fill in the text field "([^"]*)"$/) do |text|
#   on(SelectPremiumPage).text_field text
# end

Then(/^I am redirected to home details page$/) do
  on(SelectPremiumPage)
end

And(/^I fill in the text field (.*) (.*)$/) do |field, value|
  on(SelectPremiumPage).text_field(field, value)
end

And(/^I fill in the number field (.*) (.*)$/) do |field, value|
  on(SelectPremiumPage).number_field(field, value)
end

And(/^I fill in the email field (.*) (.*)$/) do |field, value|
  on(SelectPremiumPage).email_field(field, value)
end

And(/^I fill in the password field (.*) (.*)$/) do |field, value|
  on(SelectPremiumPage).password_field(field, value)
end

Then(/^I am on the select products page$/) do
  sleep 3
  if @browser.driver.current_url == "https://flexisafeweb-dev.azurewebsites.net/products"
    puts("Successfully redirected to 'https://flexisafeweb-dev.azurewebsites.net/products' ")
  else
    fail("Redirect failed, current url: #{@browser.driver.current_url}")
  end
end


