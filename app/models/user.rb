class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false }

  has_many :likes
  has_many :comments
  has_many :posts
  has_many :post, through: :likes
  has_many :post, through: :comments
end
