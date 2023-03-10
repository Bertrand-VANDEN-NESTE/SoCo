class User < ApplicationRecord
  has_many :participants
  has_many :event_ratings
  has_many :chatrooms
  has_many :messages
  has_many :participant_ratings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
