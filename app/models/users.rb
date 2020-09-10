require 'digest/sha1'

class Users < ApplicationRecord
  enum role: %i[admin regular]

  has_many :authored_tests, class_name: 'Test', foreign_key: 'author_id'
  has_many :test_passages
  has_many :tests, through: :test_passages

  has_secure_password

  def test_passages(test)
  	test_passages.order(id: :desc).find_by(test_id: test.id)
  end

end
