class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :date
      t.string :venue
      t.string :description
      t.integer :price_normal
      t.integer :price_vip
      t.string :address
      t.integer :capacity
      t.string :image_url

      t.timestamps
    end
  end
end
