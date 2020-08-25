class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :answers_count

  scope :correct, -> { where(correct: true) }

end
