class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :year, :genre, :rating, :popularity, :video, :movie_api_id
  has_many :reviews
end
