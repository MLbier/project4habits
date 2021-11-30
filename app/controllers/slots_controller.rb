class SlotsController < ApplicationController
  def new
    @slot = Slot.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @slot = Slot.new(slot_params)
    @activity = Activity.find(params[:activity_id])
    @slot.activity = @activity
    if @slot.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def slot_params
    params.require(:slot).permit(:time, :date)
  end

end
