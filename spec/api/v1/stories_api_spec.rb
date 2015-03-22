require 'rails_helper'

describe Worldgenerator::API do
  describe "GET /api/v1/story/details" do
    it "should return details of the story" do
      get "/api/v1/story/details"
        expect_status("200")
        expect_json_types({type: :string, max_players: :int, max_radius: :int, max_zones: :int, started: :bool})
    end
  end
  describe "GET /api/v1/story/map/details" do
    it "should return details of the map" do
      get "/api/v1/story/map/details"
        expect_status("200")
        expect_json_types({current: :object , siblings: :array})
        expect_json_types("current", {x: :string, y: :string, z: :string, zones: :array, poi: :array_or_null, options: :array_or_null})
    end
  end
  describe "GET /api/v1/story/player/details" do
    it "should return details of the player" do
      get "/api/v1/story/player/details"
        expect_status("200")
        expect_json_types({name: :string, str: :int, dex: :int, lvl: :int, life: :int, dmg: :int, gender: :string, inv: :array})
    end
  end
end

  #  @phase1
  #  Scenario: Requesting the list of my stories
  #    Given I'm a logged in api user
  #    When I request the "stories" api
  #    Then I should get the list of my stories
  #
  #  @phase1
  #  Scenario: Requesting the details of an existing story
  #    Given I'm a logged in api user
  #    When I request the "story/1" api
  #    And the story exists
  #    Then I should get the details of the requested "story"
  #    And the details should have "maxSize"
  #    And the details should have "theme"
  #    And the details should have "startingPoint"
  #    And the details should have "type"
  #    And the details should have "maxPlayers"
  #
  #  @phase1
  #  Scenario: Requesting the details of a non existing "story"
  #    Given I am requested for story details
  #    When I request the "story/2" api
  #    And the story doesn't exist
  #    Then I should get an error
  #
  #  @phase2 @wip
  #  Scenario: Requesting the details of story map
  #    Given I'm a logged in api user
  #    When I request the "story/1/map" api
  #    Then I should get the details of the requested "map"
  #    And the details should have "boundaries"
  #    And the details should have "poi"
  #    And the details should have "rooms"
  #    And the details should have "startingPoint"
  #    And the details should have "endingPoint"
  #    And the details should have "activePlayers"
  #
  #  @phase1
  #  Scenario: Requesting the list of players for an existing story
  #    Given I'm a logged in api user
  #    And the story "1" exists
  #    When I request the "story/1/players" api
  #    Then I should get the list of the players of the current story
  #
  #  @phase1
  #  Scenario: Requesting the list of players for a non existing story
  #    Given I'm a logged in api user
  #    And the story "2" doesn't exist
  #    When I request the "story/2/players" api
  #    Then I should get an error
  #
  #  @phase2 @wip
  #  Scenario: Requesting the details of a player for an existing story
  #    Given I'm a logged in api user
  #    And the story "1" exists
  #    And the player "1" exists
  #    When I request the "story/1/player/1" api
  #    Then I should get the details of the requested "player"
  #
  #  @phase2 @wip
  #  Scenario: Requesting the details of a player for a non existing story
  #    Given I'm a logged in api user
  #    And the story "1" exists
  #    And the player "2" doesn't exist
  #    When I request the "story/1/player/2" api
  #    Then I should get an error
  #
  #  @phase1
  #  Scenario: Requesting the list of rooms for an existing story
  #    Given I'm a logged in api user
  #    And the story "1" exists
  #    When I request the "story/1/rooms" api
  #    Then I should get the list of the rooms of the current story
  #
  #  @phase1
  #  Scenario: Requesting the list of rooms for a non existing story
  #    Given I'm a logged in api user
  #    And the story "2" doesn't exist
  #    When I request the "story/2/rooms" api
  #    Then I should get an error
  #
  #  @phase1
  #  Scenario: Requesting the details of a room for an existing story
  #    Given I'm a logged in api user
  #    And the story "1" exists
  #    And the room "1" exists
  #    When I request the "story/1/room/1" api
  #    Then I should get the details of the requested "room"
  #    And the details should have "exits"
  #    And the details should have "poi"
  #    And the details should have "terrain"
  #
  #  @phase1
  #  Scenario: Requesting the details of a room for a non existing story
  #    Given I'm a logged in api user
  #    And the story "1" exists
  #    And the room "2" doesn't exist
  #    When I request the "story/1/room/2" api
  #    Then I should get an error
  #
  #  @phase2 @wip
  #  Scenario: Requesting the details of the POI for an existing story
  #
  #  @phase2 @wip
  #  Scenario: Requesting the details of the Items for an existing story
  #
  #  @phase2 @wip
  #  Scenario: Requesting the crentials for accessing APIS