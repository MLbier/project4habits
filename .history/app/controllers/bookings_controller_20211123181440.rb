class BookingsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @kid = Kid.find(params[:kid_id])
    @slot = Slot.find(params[:slot_id])
    @booking.slot = @slot
    @booking.kid = @kid
    @booking.user = current_user
    @booking.save
    redirect_to kid_path(@kid)
  end
end
