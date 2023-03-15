class Event < ApplicationRecord
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :description],
    # associated_against: {
    #   artists: %i[name description]
    # },
    using: {
      tsearch: { prefix: true }
    }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :description, :venue],
    associated_against: {
      tags: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }

  has_many :event_artists
  has_many :artists, through: :event_artists, source: :artist
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_and_belongs_to_many :tags, join_table: :events_tags
  has_many :bookings
end
