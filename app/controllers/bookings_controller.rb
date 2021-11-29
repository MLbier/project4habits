class BookingsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  #if there is a booking for kid_id with the slot_id then the kid cannot book again

  def create
    @booking = Booking.new
    @kid = Kid.find(params[:kid_id])
    @slot = Slot.find(params[:slot_id])
    @already_booked = Booking.where(slot: @slot, kid: @kid).exists?
    unless @already_booked
      @booking.slot = @slot
      @booking.kid = @kid
      @booking.save
    end
    redirect_to kid_path(@kid)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy!
    redirect_to kid_path(@booking.kid)
  end
end
