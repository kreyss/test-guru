class CreateTestsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :tests_users do |t|
      t.references :test 
      t.references :user
      t.string :status, default: 'active'
      
      t.timestamps
    end
  end
end
