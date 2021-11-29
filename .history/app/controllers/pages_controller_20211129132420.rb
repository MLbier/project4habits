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
  end

end
