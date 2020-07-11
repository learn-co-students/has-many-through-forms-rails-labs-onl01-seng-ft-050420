# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
    User.create(username: Faker::Internet.username, email: Faker::Internet.free_email)
    Post.create(title: Faker::Lorem.word,  content: Faker::Lorem.sentence)
    Comment.create(content: Faker::Lorem.sentence)
    Category.create(name: Faker::Lorem.word)
end

comment1 = Comment.find(1)
comment2 = Comment.find(2)
comment3 = Comment.find(3)
comment4 = Comment.find(4)
comment5 = Comment.find(5)
comment6 = Comment.find(6)
comment7 = Comment.find(7)
comment8 = Comment.find(8)
comment9 = Comment.find(9)
comment10 = Comment.find(10)

user1 = User.find(1)
user2 = User.find(2)
user3 = User.find(3)
user4 = User.find(4)
user5 = User.find(5)
user6 = User.find(6)
user7 = User.find(7)
user8 = User.find(8)
user9 = User.find(9)
user10 = User.find(10)


user1.comments << comment1
user2.comments << comment2
user3.comments << comment3
user4.comments << comment4
user5.comments << comment5
user6.comments << comment6
user7.comments << comment7
user8.comments << comment8
user9.comments << comment9
user10.comments << comment10

post1 = Post.find(1)
post2 = Post.find(2)
post3 = Post.find(3)
post4 = Post.find(4)
post5 = Post.find(5)
post6 = Post.find(6)
post7 = Post.find(7)
post8 = Post.find(8)
post9 = Post.find(9)
post10 = Post.find(10)

category1 = Category.find(1)
category2 = Category.find(2)
category3 = Category.find(3)
category4 = Category.find(4)
category5 = Category.find(5)
category6 = Category.find(6)
category7 = Category.find(7)
category8 = Category.find(8)
category9 = Category.find(9)
category10 = Category.find(10)

post1.categories << category1
post2.categories << category2
post3.categories << category3
post4.categories << category4
post5.categories << category5
post6.categories << category6
post7.categories << category7
post8.categories << category8
post9.categories << category9
post10.categories << category10

post1.comments << comment1
post2.comments << comment2
post3.comments << comment3
post4.comments << comment4
post5.comments << comment5
post6.comments << comment6
post7.comments << comment7
post8.comments << comment8
post9.comments << comment9
post10.comments << comment10


"A Bunch of stuff created!"