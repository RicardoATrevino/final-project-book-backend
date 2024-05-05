# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: "Rico", password: "password", email: "exmaple@email.com")
User.create!(name: "Mari", password: "password", email: "exmaple_2@email.com")
User.create!(name: "Elisha", password: "password", email: "exmaple_3@email.com")

Book.create!(title: "The Alchemist", author: "Paulo Coelho", genre: "fiction", description: "The story follows the shepherd boy Santiago in his journey across North Africa to the pyramids of Egypt after he dreams of finding a treasure there.")
Book.create!(title: "The Pragmatic Programmer", author: "David Thomas - Andrew Hunt", genre: "educational", description: "Tech Book that claims that you would read and reread with fresh insights every single time.")
Book.create!(title: "Algorithms", author: "Panos Louridas", genre: "Educational", description: "An accessible intro to algorithms, explaining not just what they are but how they work with examples from a wide range of application areas")

Favorited.create!(user_id: 1, book_id: 1)
Favorited.create!(user_id: 2, book_id: 2)
Favorited.create!(user_id: 1, book_id: 2)
Favorited.create!(user_id: 1, book_id: 3)
