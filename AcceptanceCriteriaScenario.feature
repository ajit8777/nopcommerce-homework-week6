Feature: demo nopcommerce's top menu acceptance criteria

  As a user, I would like to check acceptance criteria of nopcommerce topmenu

  Background: user is on given URL
    When user type URL https://demo.nopcommerce.com
    And user click on enter button
    Then user is on given URL

  Scenario: verify that user can navigate to books category
    When user is given url
    And click on books tab on top menu
    Then user is navigated to books category page

  Scenario: verify that user can see the books category page filters and list of products
    When user is on given url
    And click on books tab on top menu
    And check filters and list tab

  Scenario: verify user can see 'Sort by' filter on book category page
    Given user is on books category page
    When user is on books category page
    And check 'Sort by' filter is present
    Then 'Sort by' filter available on book category page

  Scenario: verify user can see 'Display' filter on book category page
    Given user is on books category page
    When user is on books category page
    And check 'Display' filter is present
    Then 'Display' filter is available on book category page

  Scenario: verify that user can see 'Grid' tab on book category page
    Given user is on books category page
    When user is on books category page
    And check 'Grid' tab is present
    Then 'Grid' tab is available on book category page

  Scenario: verify that user can see 'List' tab on book category page
    Given user is on books category page
    When user is on books category page
    And check 'List' tab is present
    Then 'List' tab is available on book category page

  Scenario: verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given user is on books category page
    When user is on books category page
    And click on 'Sort by' filter
    And check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given user is on books category page
    When user is on books category page
    And click on 'Sort by' filter
    And check that 'Name: A to Z' is first in order
    Then 'Name: A to Z' is first option in order

  Scenario: verify that user can see 'Name: A to Z' filter is functioning as expected(Note: products are filtered in alphabetical order )
    Given user is on books category page
    When user is on books category page
    And click on 'Sort by' filter
    And select 'Name: A to Z' filter
    Then all products are displayed in alphabetical order