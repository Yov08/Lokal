class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.integer :artist_id
      t.integer :event_id

      t.timestamps
    end
  end
end
