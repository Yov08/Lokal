class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :pax
      t.boolean :booking_type
      t.integer :total_price

      t.timestamps
    end
  end
end
