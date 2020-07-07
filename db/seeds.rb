# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
    Post.create(title: Faker::Book.title, content: Faker::Book.author)
end

Post.all.each do |post|
    2.times do
        post.categories.create(name: Faker::Book.genre)
    end
end

Post.all.each do |post|
    2.times do
        post.comments.create(content: Faker::Book.publisher)
    end
end