class Event < ApplicationRecord
  belongs_to :user
  has_many :participants
  has_one_attached :photo
end
