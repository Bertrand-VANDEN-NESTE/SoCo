class Event < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_many :event_ratings
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location_and_theme, against: %i[location theme],
  using: {
    tsearch: { prefix: true }
  }
end
