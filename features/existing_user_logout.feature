Feature: As an existing user I want to adjust my cover

  Background:
    Given I am on the login page

    @all
    Scenario Outline: I click the login button, fill in user details and click log in then log out.
      When I wait "3" second
      And I click on the button "Log in"

      When I wait "3" second
      And I fill in the email field email <email>
      And I fill in the password field password <password>
      And I click "Log in"
      Then I am redirected to the dashboard page

      When I wait "3" second
      And I click the link "Logout"
      Then I am redirected to the login page


      Examples:
        |email                                 |password  |
        |jmcevoy+flexisafe3294003@palo-it.com  |@Paloit12 |


