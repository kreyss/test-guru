class Category < ApplicationRecord
  has_many :tests

  default_scope { order(created_at: :asc) }

end