Feature: Story
  Features available for the Story
  
  @phase2 @wip
  Scenario: Generating a new Story
    Given I'm a logged in user
    When I visit the dashboard
    And I click on the "generate new Story" button
    Then I can generate a new Story
    And it should be my current Story

  @phase2 @wip
  Scenario: Choosing the new Story options when generating a new Story
    Given I'm a logged in user
    When I visit the dashboard
    And I click on the "generate new Story" button
    Then I can choose some options for the Story
    And it should be my current Story

  @phase1
  Scenario: Playing the current Story
    Given I'm a logged in user
    When I visit the dashboard
    And I click on the "Start current Story" button
    Then I should be on the page "Story"
    And it should be my current Story

  @phase1
  Scenario: Continue the current Story
    Given I'm a logged in user
    When I visit the dashboard
    And I click on the "Continue current Story" button
    Then I should be on the page "Story"
    And it should be my current Story

  @phase2 @wip
  Scenario: Exiting the current Story
    Given I'm a logged in user
    And I'm playing a Story
    When I click on the "Exit current Story" button
    And I confirm "Exit current Story"
    Then I should be on the page "Dashboard"
    And my story progress should be saved

  @phase2 @wip
  Scenario: Continuing the current Story from the saved status
    Given I'm a logged in user
    And I've played to a Story once
    And the status of the Story has been saved
    When I visit the dashboard
    And I click on the "Continue current Story" button
    Then I should be on the page "Story"
    And it should be my current Story
    And it should continue from the saved status