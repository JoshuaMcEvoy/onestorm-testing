Feature: I am a user and I want to check my payout
  Background:
    Given that I am on the landing page

    @all
    Scenario: check payout
      When I populate policy fields with data
      And I click the button "Submit"
      Then I wait "3" seconds
#      Then I check the longitude and latitude have been populated
      And I check the Radii fields have populated
      And I check the Number of Wind Speed fields have populated
      And I select the storm data source
      Then I wait "3" seconds
      And I click the button "Check"
      Then I wait "5" seconds

