require 'faker'
require 'open-uri'

puts "warming the syrup..."
Episode.destroy_all
puts "Contact Dr. Jemima..."
10.times do
  Episode.create!(
    title: Faker::TvShows::Simpsons.character,
    preview_text: Faker::TvShows::Simpsons.quote,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    published_at: Time.current
  ).tap do |episode|
    episode.thumbnail.attach(
      io: URI.open("https://res.cloudinary.com/dcodoqg0p/image/upload/v1683881352/random0#{Random.rand(1..5)}"),
      filename: "thumbnail.jpg",
      content_type: "image/jpeg"
    )
  end
end
puts "Oh my god my waffle!"
