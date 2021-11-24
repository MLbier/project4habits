class Activity < ApplicationRecord
  belongs_to :user
  # has_many :bookings, dependent: :destroy
  # has_one_attached :photo
  has_many :slots
end
