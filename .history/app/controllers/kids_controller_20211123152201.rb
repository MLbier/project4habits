class KidsController < ApplicationController
  def show
    @kid = Kid.find(params[:id])
    @activities = Activity.all
  end

  def activity
    @kid = Kid.find(params[:id])
    @activities = Activity.all
  end


end
