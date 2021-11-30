class SlotsController < ApplicationController
  def new
    @slot = Slot.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @activity.user = current_user
    if @activity.save
      redirect_to dashboard_path
    else
      render :new
    end
  end


end
