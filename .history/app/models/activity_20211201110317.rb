class Activity < ApplicationRecord
  belongs_to :user
  has_many :slots, dependent: :destroy
  has_one_attached :photo
  validates :description, presence: true, length: { minimum: 30 }
  validates :description, presence: true, length: { maximum: 250 }
  validates :price, presence: true, length: { maximum: 10 }
  validates :name, presence: true
end
