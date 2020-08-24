class Test < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category

  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :title, presense: true
  validates :level, numericality: { only_integer: true }
  validates :level, uniqueness: { scope :title }

  scope :simple, -> { where('level IN (?)', [0,1]) }
  scope :middle, -> { where('level IN (?)', (2..4)) }
  scope :complecated, -> { where('level >= ?', 5) }
  scope :by_category, lambda { |category_title| 
  
  def self.by_category(category_title)
  	Test.includes(:category).where(
      category: { title: category_title }
  		).order(title: :desc).map(&:title)
  end
end
