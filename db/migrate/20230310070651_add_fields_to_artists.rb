class AddFieldsToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :youtube, :string
    add_column :artists, :spotify, :string
    add_column :artists, :deezer, :string
  end
end
