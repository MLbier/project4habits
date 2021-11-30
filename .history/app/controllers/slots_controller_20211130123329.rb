class SlotsController < ApplicationController
  def new
    @slot = Slot.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @slot = Slot.new(params[:activity_id])
    @slot.user = current_user
    if @slot.save
      redirect_to dashboard_path
    else
      render :new
    end
  end


end
