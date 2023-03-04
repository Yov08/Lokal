class Event < ApplicationRecord
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :name, :description ],
  associated_against: {
    event: [ :name, :description ]
  },
  using: {
    tsearch: { prefix: true }
  }

  has_many :event_artists
  has_many :artists, through: :event_artists, source: :artist
end
