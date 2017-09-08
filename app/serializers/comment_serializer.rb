class CommentSerializer < ActiveModel::Serializer
  attributes :id, :note
  has_one :user
  has_one :review
end
