Feature: As I user I want to reset my password

  Background:
    Given I am on the reset password page

    @all
    Scenario: Fill in details and click create password
      When I wait "3" second
      And I populate password fields with data
      And I click button with text Create password
      When I wait "3" second
      Then I will be redirected to the dashboard page
      When I wait "3" second



