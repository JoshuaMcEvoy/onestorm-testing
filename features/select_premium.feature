Feature: As I user I want select a premium

  Background:
    Given I am on the select premium page

    @all
    Scenario Outline: Select premium and click next
      When I wait "3" second
      And I click on the button "Get Started"

      When I wait "3" second
      And I click on a premium <product>
      And I click on the button "Next"
      Then I am on the select products page

      Examples:
        |product|
        |Basic  |
        |Economy|
        |Extra  |


