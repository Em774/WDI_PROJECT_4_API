class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :year, :genre, :rating, :popularity, :video
end
