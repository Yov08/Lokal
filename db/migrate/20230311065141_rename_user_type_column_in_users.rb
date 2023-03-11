class RenameUserTypeColumnInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :user_type, :boolean, default: true, null: false
    rename_column :users, :user_type, :normal_user
  end
end
