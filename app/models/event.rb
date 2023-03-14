class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy
  has_many :event_ratings, dependent: :destroy
  has_one_attached :photo
  has_many_attached :images
  has_one :chatroom, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location_and_theme, against: %i[location theme],
  using: {
    tsearch: { prefix: true }
  }
end
