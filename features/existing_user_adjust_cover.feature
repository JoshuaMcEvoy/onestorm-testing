Feature: As an existing user I want to adjust my cover

  Background:
    Given that I am on the landing page

    @all
    Scenario Outline: Click login, fill in user details and click login, navigate and adjust the cover
      When I wait "3" second
      And I click "Log in"
      Then I am redirected to the login page

      When I wait "3" second
      And I fill in the email field email <email>
      And I fill in the password field password <password>
      And I click "Log in"
      Then I am redirected to the dashboard page

      When I wait "3" second
      And I click "Adjust Cover"
      Then I am redirected to the dashboardCovers page

      When I wait "2" second
      And I unlock the sliders
      And adjust the slider "homeSlider" by "30"
      When I wait "2" second
      And adjust the slider "accountSlider" by "-30"
      When I wait "1" second
      When I scroll down
      When I wait "2" second
      And adjust the slider "accidentSlider" by "-30"
      When I wait "1" second
      And I click "Save"
      When I wait "1" second
      Then I am redirected to the history page


      Examples:
        |email                                 |password |
        |jmcevoy+flexisafe3294003@palo-it.com  |@Paloit12|


