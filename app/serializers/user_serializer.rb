class UserSerializer < ActiveModel::Serializer
  attributes :name , :email, :bio
end
