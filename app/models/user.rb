class User < ApplicationRecord
  has_many :participants, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :event_ratings
  has_many :chatrooms
  has_many :messages, dependent: :destroy
  has_many :participant_ratings
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
