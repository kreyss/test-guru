class AddUsersUserNameEmailPasswordNullConstraint < ActiveRecord::Migration[6.0]
    def change
    change_column_null :users, :user_name, false
    change_column_null :users, :email, false
    change_column_null :users, :password, false
  end
end

