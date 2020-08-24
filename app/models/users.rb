class Users < ApplicationRecord
  enum role :%i[admin regular]

  hus_many :authored_tests, class_name: 'Test', foregion_key: 'author_id' 
  has_many :tests_users
  has_many :tests, through: :tests_users

  validates :first_name, :last_name, :email, presence: true

  scope :by_level, -> (level) { where(level: level) }
end
