require 'grape-swagger'

module Worldgenerator
  class API < Grape::API
    version 'v1', using: :path, vendor: 'woorg'
    format :json
    prefix :api

    helpers do
    end

    resource :stories do

      desc "Return the story list"
      get do
        {
          stories: [
            {
              :id => 1,
              :name => "First Story",
              :current => true
            },
            {
              :id => 2,
              :name => "Second Story",
              :current => false
            }
          ]
        }
      end
      


      desc "Return the story details"
      get ':id' do
            {
              story: [
                {
                  :type => "hunting",
                  :maxPlayers => 10,
                  :startingPoint => [0,0],
                  :maxSize => [20,30],
                  :theme => "dark"
                }
              ]
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