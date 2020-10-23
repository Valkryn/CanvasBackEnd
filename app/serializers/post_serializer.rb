class PostSerializer < ActiveModel::Serializer
  attributes :id , :title , :content , :description , :view_count , :user , :category
  has_many :comments 
  has_many :likes
end
