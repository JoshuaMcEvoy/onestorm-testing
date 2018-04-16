Given(/^that I am on the landing page$/) do
  visit CheckPolicyPage
end

When(/^I populate policy fields with data$/) do
  on(CheckPolicyPage).fill_out
end


And(/^I click the button "([^"]*)"$/) do |text|
  on(CheckPolicyPage).click_button(text)
end

Then(/^I wait "([^"]*)" seconds$/) do |time|
  on(CheckPolicyPage).delay_timer(time)
end

And(/^I select the storm data source$/) do
  on(CheckPolicyPage).data_source_details
end