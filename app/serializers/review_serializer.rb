class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :note, :rating, :movie, :user
  has_one :user
  has_one :movie
end
