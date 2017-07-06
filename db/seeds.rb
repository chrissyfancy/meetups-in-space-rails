# For creating fake events, that require a name, description, location, and date:
15.times do
  Event.create!(name: "#{Faker::HowIMetYourMother.character}'s #{Faker::HowIMetYourMother.catch_phrase} Event", description: Faker::Hipster.paragraph(3..6), location: Faker::Space.galaxy, date: Faker::Date.forward(100))
end

# For generating topics, that require a name:
topics = ["Arts & Culture", "Book Clubs", "Career & Business", "C""ars & Motorcycles", "Community & Environment", "Dancing", "Education & Learning", "Fashion & Beauty", "Fitness", "Food & Drink", "Games", "Hobbies & Crafts"]

topics.each do |topic|
  Topic.create!(name: topic)
end

# Seed Meetups table that joins Events and Topics

Event.all.each do |event|
  Meetup.create!(event_id: event.id, topic_id: Topic.find(rand(1..Topic.all.length)).id)
end
