class AddCreatedByUserToTests < ActiveRecord::Migration[6.0]
  def change
  	add_column :tests, :created_by_user, :integer, null: false, default: 0
  end
end
