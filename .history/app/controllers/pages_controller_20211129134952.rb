class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def book_activity
    @kid = Kid.find(params[:kid_id])
    @activities = Activity.all
  end

  def book_slot
    # @user = current_user
    # @kids = Kid.where(["user_id = '%s'", @user.id])
    @activity = Activity.find(params[:activity_id])
    @kid = Kid.find(params[:kid_id])
  end

  def dashboard
    @bookings = Booking.all
    @activities = Activity.all
    @user_activities = @activities.where(user_id: current_user.id)
    @owner = current_user.activities.any?
    if @owner
    @my_activities = current_user.activities
    @bookings_requests = @bookings.where(slot_id: current_user.activity.slot.id)
    end
  end

end
