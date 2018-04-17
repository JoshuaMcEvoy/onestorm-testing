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

Then(/^I check the longitude and latitude have been populated$/) do
  on(CheckPolicyPage).check_lng_lat_fields
end

And(/^I check the Radii fields have populated$/) do
  on(CheckPolicyPage).check_radii_fields
end

And(/^I check the Number of Wind Speed fields have populated$/) do
  on(CheckPolicyPage).check_no_of_wind_speed_fields
end