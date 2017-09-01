class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :email, :image, :password_digest
end
