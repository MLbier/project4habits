class KidsController < ApplicationController
  def show
    @kid = Kid.find(params[:id])
    @activities = Activity.all
    @slots = Slot.all
  end



end
