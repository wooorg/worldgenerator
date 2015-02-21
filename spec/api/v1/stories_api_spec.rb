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