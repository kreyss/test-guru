class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    def change
    create_join_table :answers, :tests_users do |t|
      t.index [:answer_id, :tests_user_id]
      t.index [:tests_user_id, :answer_id]
    end
  end
end
