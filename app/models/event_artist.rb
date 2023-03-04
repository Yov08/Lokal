class EventArtist < ApplicationRecord
  belongs_to :artist
  belongs_to :event
  has_many :artists
end
