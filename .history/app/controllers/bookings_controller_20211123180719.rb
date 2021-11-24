class BookingsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @kid = Kid.find(params[:kid_id])
    @booking.kid = @kid
    @booking.user = current_user
    @booking.save
    redirect_to listing_path(@listing)
  end
end
