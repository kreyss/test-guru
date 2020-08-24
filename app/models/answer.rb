class Answer < ApplicationRecord
  belongs_to :question

  validates: :body, presence, :true
  validates: answers_count

  scope :correct, -> { where(correct: true) }

  private

  def answers_count
  	error.add(:answers, 'number is too much') if question.answers.count >= 4
  end
end 