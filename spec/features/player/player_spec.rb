# Feature: Player
#   As a user
#   I want manage my Players
#   So I can choose which one to use and generate a new one

feature 'Player', :devise do

  #  Scenario: Generating a new Player
  #    Given I'm a logged in user
  #    When I visit the dashboard
  #    And I click on the "generate new Player" button
  #    Then I can generate a new Player
  #    And it should be my current Player
  xscenario 'user can generate a new Player from the Dashboard'

  #  Scenario: Showing a list of players
  #    Given I'm a logged in user
  #    When I visit the "players" page
  #    And I click on the "set this Player as Default" button
  #    Then it should be my current Player

  xscenario 'user can see a list of his Players'

  #  Scenario: Selecting Player as Default Player
  #    Given I'm a logged in user
  #    When I visit the "players" page
  #    And I click on the "set this Player as Default" button
  #    Then it should be my current Player
  xscenario 'user set one of his Players as default'

end