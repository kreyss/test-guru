class Category < ApplicationRecord
  has_many :tests

  validates :title, presence: true
  add_index :title, :unique => true

  default_scope { order(title: :asc) }

end
