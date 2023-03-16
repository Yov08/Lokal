class ChangeEventIdInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :event_id, :integer
    remove_column :bookings, :user_id, :integer
    add_reference :bookings, :event, foreign_key: true, null: false
    add_reference :bookings, :user, foreign_key: true, null: false
  end
end
