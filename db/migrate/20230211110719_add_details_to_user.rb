class AddDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_type, :boolean
    add_column :users, :image_url, :string
    add_column :users, :category, :string
    add_column :users, :biography, :string
    add_column :users, :rating, :integer
    add_column :users, :hourly_rate, :integer
  end
end
