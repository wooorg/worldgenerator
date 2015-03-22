# Feature: Room API
#   Basic feature test for a room API

feature 'Room API', :devise do

  #  Scenario: Returning the details of an existing room
  #    Given I am the backend
  #    And I am requested for room details
  #    When the room exists
  #    Then I should return the details of the requested room
  scenario 'user should return the details of an existing room'

  #  Scenario: Returning the details of a non existing room
  #    Given I am the backend
  #    And I am requested for room details
  #    When the room doesn't exist
  #    Then I should create a new room in the requested coordinates
  #    And I should return the details of the requested room

  scenario 'user should return the details of a non existing room'

  #  Scenario: Returning uesting the details of a room out of boundaries
  #    Given I am the backend
  #    And I am requested for room details
  #    When the room doesn't exist
  #    Then I should return an error
  scenario 'user should return an error'

end