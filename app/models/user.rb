class User < ApplicationRecord
  has_many :favoriteds
  has_many :book, through: :favoriteds
end
