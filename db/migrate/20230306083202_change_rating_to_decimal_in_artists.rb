class ChangeRatingToDecimalInArtists < ActiveRecord::Migration[7.0]
  def change
    change_column :artists, :rating, :decimal, precision: 10, scale: 2
  end
end
