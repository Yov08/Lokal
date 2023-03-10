class AddLongitudeAndLatitudeToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :longitude, :decimal
    add_column :events, :latitude, :decimal
  end
end
