class Story < Couchbase::Model
  attribute :type
  attribute :max_players
  attribute :max_radius
  attribute :max_zones
  attribute :started
  attribute :ended

  view :all
end