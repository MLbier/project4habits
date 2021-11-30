class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def book_activity
    @kid = Kid.find(params[:kid_id])
    @activities = Activity.all
  end

  def book_slot
    @activity = Activity.find(params[:activity_id])
    @kid = Kid.find(params[:kid_id])
  end

  def dashboard
    @bookings = Booking.all
    @activities = Activity.all
    @user_activities = @activities.where(user_id: current_user.id)
    @my_activities = current_user.activities
  end

  def slot_bookings
    @activities = Activity.all
    @slots = Slot.all
    @user_activities = @activities.where(user_id: current_user.id)
    @slot = @slots.where(slot_id: slot.id)

  end

end
