Feature: Account
  Features related to the user account
   
  @phase1
  Scenario: Registering to the website
    Given I'm a guest user
    When I visit the homepage
    And I click on the registration link
    And I fill the form with my registration details
    Then I should be registered

  @phase1
  Scenario: Logging to the website with right credentials
    Given I'm a registered user
    When I visit the homepage
    And I click on the login link
    And I fill the form with my right credentials
    Then I should be in the secured area

  @phase1
  Scenario: Logging to the website with wrong credentials
    Given I'm a registered user
    When I visit the homepage
    And I click on the login link
    And I fill the form with my wrong credentials
    Then I should be in the secured area

  @phase2 @wip
  Scenario: Recovering password
    Given I'm a guest user
    When I visit the "password recovery" page
    And I fill the password recovery form with my login details
    Then I should receive a link to reset my passowrd

  @phase2 @wip
  Scenario: Showing account details
    Given I'm a logged in user
    When I visit the "account" page
    Then I should see the details of my account

  @phase2 @wip
  Scenario: Editing account details
    Given I'm a logged in user
    When I visit the "account" page
    And change my account details
    And I visit the "account" page
    Then I should see the update details of my account

  @phase2 @wip
  Scenario: Resetting password
    Given I'm a guest user
    And I received a link to reset my password
    When I visit the link to reset my password
    And I fill the form with my new password
    And I visit the homepage
    And I click on the login link
    And I fill the form with my new login details
    Then I should be in the secured area