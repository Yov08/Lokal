class RemoveTestFromEvent < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :test, :string
  end
end
