class Users < ApplicationRecord
  enum role: %i[admin regular]

  has_many :authored_tests, class_name: 'Test', foreign_key: 'author_id'
  has_many :tests_users
  has_many :tests, through: :tests_users

  validates :user_name, :email, presence: true

end