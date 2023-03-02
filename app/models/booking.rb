class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :pax, presence: true, numericality: { only_integer: true }
  validates :pax_vip, numericality: { only_integer: true }
  validates :total_price, presence: true, numericality: { only_integer: true }

  # def calculate_total_price
    # (self.pax * self.event.price_normal) + (self.pax_vip * self.event.price_vip)
  # end
end
