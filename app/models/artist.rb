class Artist < ApplicationRecord
  belongs_to :user
  has_many :event_artists
  has_many :events, through: :event_artists

  has_one_attached :photo

  validates :name, presence: true
end
