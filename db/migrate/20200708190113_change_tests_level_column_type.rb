class ChangeTestsLevelColumnType < ActiveRecord::Migration[6.0]
  def change
  	change_column :tests, :level, :integer
  end
end
