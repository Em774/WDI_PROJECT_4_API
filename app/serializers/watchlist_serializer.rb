class WatchlistSerializer < ActiveModel::Serializer
  attributes :id
  has_one :movie
  has_one :user
end
