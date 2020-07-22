# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Test.create(title: "Default Title")
#Answer.create(body: "Default Answer", correct: false)

# ------------------------------------------------------------------------------------------

# Category.delete_all
# User.delete_all
# Test.delete_all
# Question.delete_all
# Answer.delete_all

# ------------------------------------------------------------------------------------------

# Category.create(title: 'Frontend')
# Category.create(title: 'Backend')
# Category.create(title: 'Mobile Development')

# User.create(user_name: 'Mike', email: 'mike1@yahoo.com', password: '12345')
# User.create(user_name: 'Dave', email: 'dave1@yahoo.com', password: '54321')
# User.create(user_name: 'John', email: 'john1@yahoo.com', password: '12312')

# Test.create(title: 'Ruby', level: 2, category_id: 2)
# Test.create(title: 'Html', level: 0, category_id: 1)
# Test.create(title: 'Kotlin', level: 3, category_id: 3)
# Test.create(title: 'Elixir', level: 2, category_id: 2)
# Test.create(title: 'JS', level: 0, category_id: 1)
# Test.create(title: 'Flutter', level: 3, category_id: 3)


# ------------------------------------------------------------------------------------------

TestsUser.create(
  [
    {test_id: 1, user_id: 1},
    {test_id: 2, user_id: 1},
    {test_id: 3, user_id: 2},
    {test_id: 2, user_id: 3}
  ]
)
