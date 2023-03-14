class Event < ApplicationRecord
  belongs_to :user
  has_many :participants, dependent: :destroy
  has_many :event_ratings, dependent: :destroy
  has_one_attached :photo
  has_many_attached :images, dependent: :destroy
  has_many :categories
  has_one :chatroom, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:location, :title],
    associated_against: { categories: [:title] },
    using: {
      tsearch: { prefix: true }
    }
end
