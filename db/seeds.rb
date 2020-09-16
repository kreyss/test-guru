# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Test.create(title: "Default Title")
#Answer.create(body: "Default Answer", correct: false)

users = Users.create(
  user_name: 'FFaker::Name.first_name',
  email: 'asd@asd.asd',
  password: 'qweqwe'
)

admin = Users.create(
  user_name: 'Admin',
  email: 'admin@example.com',
  role: 'admin',
  password: 'admin'
)
cat = ['Backend','Frontend']
categories = Category.create([{title: cat[0]}, {title: cat[1]}])

tests = Test.create([{title: 'Ruby', category: categories[0], level: 1, author: admin},{title: 'Ruby on Rails', category: categories[1], level: 2, author: admin},{title: 'JavaScript', category: categories[0], level: 1, author: admin},{title: 'CSS', category: categories[1], level: 2, author: admin},{title: 'Python', category: categories[0], level: 2, author: admin}])

question = Question.create(title: "Default Title", body: '1', test: tests[1])

answers = Answer.create(body: 'Default Answer', correct: false, question: question)
	

#Test.all.each { [test] TestsUser.create(user: user, test: test) }
