class LikeSerializer < ActiveModel::Serializer
  attributes :id, :likes, :user
  has_one :user
  has_one :post
end
