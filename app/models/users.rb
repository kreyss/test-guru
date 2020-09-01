class Users < ApplicationRecord
  enum role :%i[admin regular]

  hus_many :authored_tests, class_name: 'Test', foregion_key: 'author_id' 
  has_many :tests_users
  has_many :tests, through: :tests_users

  def tests_by_level(level)
    self.tests.where(level: level)
  end
end
