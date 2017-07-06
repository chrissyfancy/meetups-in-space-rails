# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# For creating fake events, that require a name, description, location, and date:
15.times do
  Event.create!(name: "#{Faker::HowIMetYourMother.character}'s #{Faker::HowIMetYourMother.catch_phrase} Event", description: Faker::Hipster.paragraph(3..6), location: Faker::Space.galaxy, date: Faker::Date.forward(100))
end

# For generating topics, that require a name:
topics = ["Arts & Culture", "Book Clubs", "Career & Business", "C""ars & Motorcycles", "Community & Environment", "Dancing", "Education & Learning", "Fashion & Beauty", "Fitness", "Food & Drink", "Games", "Hobbies & Crafts"]

topics.each do |topic|
  Topic.create!(name: topic)
end
