class BookingsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @kid = Kid.find(params[:kid_id])
    @booking.kid = @kid
    @booking.user = current_user
    if @booking.save
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end
end
