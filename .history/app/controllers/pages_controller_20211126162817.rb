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

end
