class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @kid = Kid.find(params[:kid_id])
    @bookings = Booking.where(kid_id: @kid.id)
  end
end
