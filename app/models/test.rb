class Test < ApplicationRecord
	
  def self.by_category(tests)
    Test.where(categories: tests)
  end
end
