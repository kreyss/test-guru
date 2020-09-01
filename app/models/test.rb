class Test < ApplicationRecord
  belongs_to :author, class_name: 'Users', , foreign_key: 'author_id'
  belongs_to :category

  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :title, presence: true
  validates :level, numericality: { only_integer: true }
  validates :level, uniqueness: { scope: :title }

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5) }

  scope :by_category, -> (value){ 
    joins(:category).where(categories: { title: value })
  }

  scope :by_level, -> (level){ select(:title).where(level: level) }

  def self.ordered_by_category value
    order(title: :desc).by_category(value).pluck(:title)
  end

end
