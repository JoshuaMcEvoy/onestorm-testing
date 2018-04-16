Feature: I am a user and I want to check my payout
  Background:
    Given that I am on the landing page

    @all
    Scenario Outline: check payout
      When I populate policy fields with data
      And I wait "2" second
      Then I am redirected to the premium page

      When I click on a premium <product>
      And I click next
      Then I am redirected to the products page

      When I wait "2" second
      And adjust the slider "homeSlider" by "30"
      When I wait "2" second
      And adjust the slider "accountSlider" by "-30"
      When I wait "1" second
      When I scroll down
      When I wait "2" second
      And adjust the slider "accidentSlider" by "-30"
      When I wait "2" second
      When I click next
      Then I am redirected to the customer page

      When I populate customer fields with data
      And I click next
      Then I am redirected to the house page

      When I populate house fields with data
      And I click next
      Then I am redirected to the insurance page

#      When I populate calendar fields with data
      When click the agree checkbox
      And I click next
      Then I am redirected to the policy page

      When I wait "3" second
      When I click on the button "Back to home"
      Then I am redirected to the landing page

      Examples:
        |product|
        |Basic  |
        |Economy|
        |Extra  |
