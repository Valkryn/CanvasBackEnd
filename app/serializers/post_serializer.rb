class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :description, :views, :user , :category
  has_one :user
  has_one :category
  has_many :comments
  has_many :likes
end
