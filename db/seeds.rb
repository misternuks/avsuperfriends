# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "warming the syrup..."
Episode.destroy_all
puts "Contact Dr. Jemima..."
10.times do
Episode.create!(
  title: Faker::TvShows::Simpsons.character,
  preview_text: Faker::TvShows::Simpsons.quote
)
end
puts "Oh my god my waffle!"
