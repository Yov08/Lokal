class Event < ApplicationRecord
  has_one_attached :photo
  has_many :event_artists
  has_many :artists, through: :event_artists, source: :artist
end
