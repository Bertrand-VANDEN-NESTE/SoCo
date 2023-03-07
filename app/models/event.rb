class Event < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom
  has_one_attached :photo
end
