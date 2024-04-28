# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: "Rico", password_digest: "password", email: "exmaple@email.com")

Book.create!(title: "The Alchemist", author: "Paulo Coelho", genre: "fiction", description: "The story follows the shepherd boy Santiago in his journey across North Africa to the pyramids of Egypt after he dreams of finding a treasure there.")

Favorited.create(User_id: 1, Book_id: 1)
