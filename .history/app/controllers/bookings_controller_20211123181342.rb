class BookingsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @kid = Kid.find(params[:kid_id])
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.kid = @kid
    @booking.user = current_user
    @booking.save
    redirect_to kid_path(@kid)
  end
end
