class KidsController < ApplicationController
  def show
    @kid = Kid.find(params[:kid_id])
  end
end
