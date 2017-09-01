class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :note, :rating
  has_one :user
  has_one :movie
end
