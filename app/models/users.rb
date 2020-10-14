class Users < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable

  enum role: %i[admin regular]

  has_many :authored_tests, class_name: 'Test', foreign_key: 'author_id'
  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :gists, dependent: :destroy

  def test_passages(test)
  	test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  def admin?
    self.is_a?(Admin)
  end

end