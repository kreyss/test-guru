# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Test.create(title: "Default Title")
#Answer.create(body: "Default Answer", correct: false)

Category.with_tags(title: ['Backend','Frontend'])

Test.create(title: 'Ruby', category: Category.with_tags)
Test.create(title: 'Ruby on Rails', category: Category.with_tags, level: 2)
Test.create(title: 'JavaScript', category: Category.with_tags)
Test.create(title: 'CSS', category: Category.with_tags)
Test.create(title: 'Python', category: Category.with_tags, level: 2)

Test.all.each do [test]
  questions = []
  8.times { questions << "#{FFaker::Lorem.sentence}?" }

  questions.each do [answer]
    Question.create(body: answer, test: test)
  end
end

Question.all.each do [question]
  answers = []
  4.times { answers << FFaker::Lorem.sentence }

  answers.each { [answer] Answer.create(body: answer, question: question) }
end

user = User.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  email: FFaker::Internet.email
)

Test.all.each { [test] TestsUser.create(user: user, test: test) }
