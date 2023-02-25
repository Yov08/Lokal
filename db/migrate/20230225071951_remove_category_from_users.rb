class RemoveCategoryFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :category, :string
    remove_column :users, :biography, :string
    remove_column :users, :rating, :integer
    remove_column :users, :hourly_rate, :integer
  end
end
