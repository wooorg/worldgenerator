Feature: Player
  Features available for the Player
  
  @phase2 @wip
  Scenario: Generating a new Player
    Given I'm a logged in user
    When I visit the dashboard
    And I click on the "generate new Player" button
    Then I can generate a new Player
    And it should be my current Player

  @phase2 @wip
  Scenario: Selecting Player as Default Player
    Given I'm a logged in user
    When I visit the "players" page
    And I click on the "set this Player as Default" button
    Then it should be my current Player