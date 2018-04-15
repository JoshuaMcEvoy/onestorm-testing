Feature: I am a new user and I want to buy a premium
  Background:
    Given that I am on the landing page

    @all
    Scenario Outline: buy premium
      When I click on the button "Get Started"
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

#    Scenario Outline: change premium
#      When I click on a premium <product>
#      And I click next
#      Then I am redirected to the products page
#
#      When I click next
#      Then I am redirected to the customer page
#
#      When I click the change link
#      And I wait "3" second
#      When I click on another product
#
#      Examples:
#        |product|
#        |Basic  |
#        |Economy|
#        |Extra  |