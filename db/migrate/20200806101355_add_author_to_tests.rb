class AddAuthorToTests < ActiveRecord::Migration[6.0]
  def change
  	add_reference :tests, :author
  end
end