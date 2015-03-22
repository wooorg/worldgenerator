# Feature: Story
#   As a user
#   I want manage my Stories
#   So I can choose which one to play and generate a new one

feature 'Story', :devise do

  # Scenario: Generating a new Story
  #    Given I'm a logged in user
  #    When I visit the dashboard
  #    And I click on the "generate new Story" button
  #    Then I can generate a new Story
  #    And it should be my current Story
  xscenario 'user can generate a new Story from the Dashboard'

  #  Scenario: Choosing the new Story options when generating a new Story
  #    Given I'm a logged in user
  #    When I visit the dashboard
  #    And I click on the "generate new Story" button
  #    Then I can choose some options for the Story
  #    And it should be my current Story
  xscenario 'user can choose the new Story options when generating a new Story'

  #  Scenario: Playing the current Story
  #    Given I'm a logged in user
  #    When I visit the dashboard
  #    And I click on the "Start current Story" button
  #    Then I should be on the page "Story"
  #    And it should be my current Story
  scenario 'user can play the current Story'

  #  Scenario: Continuing the current Story
  #    Given I'm a logged in user
  #    When I visit the dashboard
  #    And I click on the "Continue current Story" button
  #    Then I should be on the page "Story"
  #    And it should be my current Story
  scenario 'user can continue to playing the current Story'


  #  Scenario: Exiting the current Story
  #    Given I'm a logged in user
  #    And I'm playing a Story
  #    When I click on the "Exit current Story" button
  #    And I confirm "Exit current Story"
  #    Then I should be on the page "Dashboard"
  #    And my story progress should be saved
  xscenario 'user can exit from the current Story'


  #  Scenario: Continuing the current Story from the saved status
  #    Given I'm a logged in user
  #    And I've played to a Story once
  #    And the status of the Story has been saved
  #    When I visit the dashboard
  #    And I click on the "Continue current Story" button
  #    Then I should be on the page "Story"
  #    And it should be my current Story
  #    And it should continue from the saved status
  xscenario 'user can continue the current Story from the saved status'

end
