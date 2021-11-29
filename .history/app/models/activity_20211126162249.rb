class Activity < ApplicationRecord
  belongs_to :user
  has_many :slots, dependent: :destroy
  # has_one_attached :photo
end
