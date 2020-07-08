class ChangeColumnNameInTests < ActiveRecord::Migration[6.0]
  def change
  	rename_column :tests, :created_by_user, :author_id
  end
end