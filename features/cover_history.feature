Feature: As an existing user I want to check my cover history

  Background:
    Given that I am on the landing page

  @all
  Scenario Outline: Click login, fill in user details and click login, navigate to and view cover history
    When I wait "3" second
    And I click "Log in"
    Then I am redirected to the login page

    When I wait "3" second
    And I fill in the email field email <email>
    And I fill in the password field password <password>
    And I click "Log in"
    Then I am redirected to the dashboard page

    When I wait "3" second
    And I click the div Change History
    Then I am redirected to the change history page


    Examples:
      |email                                 |password |
      |jmcevoy+flexisafe3294003@palo-it.com  |@Paloit12|