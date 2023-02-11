class AddTestToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :test, :string
  end
end
