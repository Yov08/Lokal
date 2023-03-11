class AddInstagramToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :instagram, :string
  end
end
