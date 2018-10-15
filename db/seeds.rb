# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(first_name: 'Jeremy', last_name: 'Clarkson')
user2 = User.create(first_name: 'James', last_name: 'May')
user3 = User.create(first_name: 'Richard', last_name: 'Hammond')

post1 = Post.create(
  title: 'title',
  user: user1,
  content: <<-EOS
    The BMW M3 remains the only car ever to have earned more titles than the
    venerable Porsche 911 in Motorsport, and also is the most successful
    touring, and grand touring car ever to have participated in racing.
  EOS
)

post2 = Post.create(
  title: 'title2',
  user: user2,
  content: <<-EOS
    Mercedes-AMG GmbH, commonly known as AMG, is the high performance
    division of Mercedes-Benz.
  EOS
)

100.times do |i|
  Comment.create(user: user2, post: post1, content: "I want that car. #{i}")
  Comment.create(user: user3, post: post1, content: "Me too. #{i}")
end
