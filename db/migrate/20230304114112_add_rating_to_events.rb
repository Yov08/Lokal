class AddRatingToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :rating, :decimal
  end
end
