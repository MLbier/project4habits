class SlotsController < ApplicationController
  def new
    @slot = Slot.new
    @activity = Activity.find(params[:activity_id])
  end

  def create

  end


end
