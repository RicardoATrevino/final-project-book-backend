class User < ApplicationRecord
  has_many :favoriteds
  has_many :book, through: :favoriteds
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
