class DropAnswersTestsUsers < ActiveRecord::Migration[6.0]
  def change
  	drop_table :answers_tests_users
  end
end
