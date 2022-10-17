class UserSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :username, :bio
end
