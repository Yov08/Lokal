class Artist < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :name, presence: true
end
