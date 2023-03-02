class AddPaxVipToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :pax_vip, :integer
  end
end
