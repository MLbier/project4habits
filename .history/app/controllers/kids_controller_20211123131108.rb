class KidsController < ApplicationController
  def show
    @kid = Kid.find(params[:id])
  end
end
