class Booking < ApplicationRecord
  belongs_to :kid
  belongs_to :slot
end
