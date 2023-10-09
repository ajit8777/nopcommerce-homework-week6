Feature: Nopcommerce registration
  As a user I want to check the register functionality of nopcommerce

  Background: I am on nopcommerce registration page
    Given I open the google chrome browser
    When I open the url https://demo.nopcommerce.com/register
    Then I am on nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<first name>"
    And I enter last name "<last name>"
    And I enter email address "<email>"
    And I enter password "<password>"
    And I enter confirm password "<confirm password>"
    And Click on register button
    Then I can see an error message "<error message>"
    And I am not able to register

    Examples:
      | first name | last name | email            | password | confirm password | error message                              |
      | ""         | bakshi    | bakshi@gmail.com | 456897   | 456897           | please enter first name                    |
      | Rohan      | ""        | bakshi@gmail.com | 456897   | 456897           | please enter last name                     |
      | Rohan      | bakshi    | ""               | 456897   | 456897           | please enter valid email                   |
      | Rohan      | bakshi    | bakshi@gmail.com | ""       | 456897           | password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | ""               | confirm password is required               |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | 45689            | password and confirm password do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 45689    |                  | minimum 6 character password is required   |
      | ""         | ""        | ""               | ""       | ""               | mandatory (*) field is required            |

  Scenario: I should be able to select any one radio button from gender label of your personal details selection
    Given I am on gender label of your personal detail section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select day, month and year from drop down list of date of birth field
    Given I am on date of birth field of your personal detail section
    When I select day "<Day>"
    And  I select month"<Month>"
    And I select year "<Year>"
    Then I am able to select day,month and year from drop down list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

    Scenario: I should be able to check and uncheck the newsletter box on options section
      Given I am on newsletter label on options section
      When I click on newsletter checkbox
      And I again click on newsletter checkbox
      Then I am able to check and uncheck the box to newsletter label

      Scenario: I should be able to register with valid mandatory (*) field data on registration page
        When I enter first name "Rohan"
        And I enter last name "bakshi"
        And I enter email "bakshi@gmail.com"
        And I enter password "456897"
        And I enter confirm password "456897"
        And I click on register button
        Then I am able to register successfully

