class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def kidsbookings
    @bookings = Booking.all
    @kids = Kid.all
    @kid_bookings = Booking.where(kid_id: @kid)
    @kid = Kid.where(id: kid)
  end
end
