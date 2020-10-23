class User < ApplicationRecord
   has_secure_password

  has_many :likes
  has_many :comments
  has_many :posts
  has_many :post, through: :likes
  has_many :post, through: :comments


  validates :email, presence: true, uniqueness: {case_sensitive: false}
end
