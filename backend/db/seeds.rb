# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    Account.create(name: Faker::Name.name)
end
100.times do 
    Post.create(account_id: Faker::Number.between(from: 1, to: 10), title: Faker::Lorem.word, body: Faker::Lorem.paragraph(sentence_count: 2))
end
100.times do 
    Reaction.create(account_id: Faker::Number.between(from: 1, to: 10), post_id: Faker::Number.between(from: 1, to: 100), action: "like")
end
100.times do 
    Comment.create(account_id: Faker::Number.between(from: 1, to: 10), post_id: Faker::Number.between(from: 1, to: 100), body: Faker::Lorem.paragraph(sentence_count: 2))
end
100.times do 
    Image.create(account_id: Faker::Number.between(from: 1, to: 10), code: Faker::String.random(length: 8))
end