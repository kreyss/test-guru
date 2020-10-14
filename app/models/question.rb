class Question < ApplicationRecord
  belongs_to :tests

  has_many :answers, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :gists, dependent: :destroy

  validates :body, presence: true
end
