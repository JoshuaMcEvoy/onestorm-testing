Feature: As an existing user I want to log in

  Background:
    Given I am on the login page

    @all
    Scenario Outline: Click the login button, fill in user details and click log in
      When I wait "3" second
      And I click on the button "Log in"

      When I wait "3" second
      And I fill in the email field email <email>
      And I fill in the password field password <password>
      And I click the button "Log in"
      Then I am redirected to the dashboard page

      Examples:
        |email                                 |password  |
        |jmcevoy+flexisafe3294003@palo-it.com  |@Paloit12 |

    @all
    Scenario Outline: Click the login button, click login without filling in details
      When I wait "3" second
      And I click on the button "Log in"

      When I wait "3" second
      And I click the button "Log in"
      When I wait "3" second
      Then error should appear

      When I wait "3" second
      And I fill in the email field email <email>
      When I wait "3" second
      And I click the button "Log in"
      When I wait "3" second
      Then error should appear

      When I wait "3" second
      And I clear the email field
      And I fill in the password field password <password>
      When I wait "3" second
      And I click the button "Log in"
      When I wait "3" second
      Then error should appear

      Examples:
        |email                                 |password |
        |jmcevoy+flexisafe3294003@palo-it.com  |@Paloit  |