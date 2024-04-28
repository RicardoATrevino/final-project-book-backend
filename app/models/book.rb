class Book < ApplicationRecord
  has_many :favoriteds
  has_many :user, through: :favoriteds
end
