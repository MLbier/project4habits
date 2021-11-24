class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def kids-bookings
    @bookings = Booking.all
    @kids = Kid.all
    @kid_bookings = Booking.where(kid_id: @kid)
  end
end
