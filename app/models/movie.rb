class Movie < ApplicationRecord
  has_many :reviews, foreign_key: :review_id, class_name: "Review"
  has_many :users, through: :reviews
end
