class User < ApplicationRecord
  has_secure_password

  has_many :reviews, foreign_key: :review_id, class_name: "Review"
  validates :email, uniqueness: true
end
