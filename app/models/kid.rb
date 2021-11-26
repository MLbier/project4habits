class Kid < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :first_name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
end
