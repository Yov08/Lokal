class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.integer :user_id
      t.string :category
      t.string :biography
      t.integer :rating
      t.integer :hourly_rate
      t.string :media_link
      t.string :image_url
      t.string :social_media_links

      t.timestamps
    end
  end
end
