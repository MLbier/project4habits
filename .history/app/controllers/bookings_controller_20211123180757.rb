class BookingsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  def create
    raise
    @booking = Booking.new
    @kid = Kid.find(params[:kid_id])
    @booking.kid = @kid
    @booking.user = current_user
    @booking.save
    redirect_to kid_path(@kid)
  end
end
