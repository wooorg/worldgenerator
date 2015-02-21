require 'grape-swagger'

module Worldgenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'woorg'
    format :json
    prefix :api

    helpers do
    end

    resource :story do
      desc "Return the story details"
      get :details do
            {
              :type => "hunting",
              :max_players => 10,
              :max_radius => 5,
              :max_zones => 5,
              :started => true,
              :ended => false
            }
      end

      resource :map do
        desc "Return the story details"
        get :details do
          siblings = []
          {:current => {
              :x => "0",
              :y => "0",
              :z => "0",
              :zones => [
                { :zone => "desert", :amount => 60, :direction => "nw" }, #out of 100
                { :zone => "mountain", :amount => 30, :direction => "ne" },
                { :zone => "ice", :amount => 5, :direction => "n" },
                { :zone => "tundra", :amount => 70, :direction => "sw" },
                { :zone => "water", :amount => 10, :direction => "ne" }
                ],
              :poi => [],
              :options => [
                :starting_point => true
                ]
              },
            :siblings => siblings}
        end
      end

      resource :player do
        desc "Return the player details"
        get :details do
            {
              :name => "tom",
              :str => 10,
              :dex => 10,
              :lvl => 1,
              :life => 30,
              :dmg => 10,
              :gender => "f",
              :inv => [], #inventory
            }
        end
      end
    end
    
    add_swagger_documentation

  end
end