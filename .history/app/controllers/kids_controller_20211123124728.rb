class KidsController < ApplicationController
  def show
    @kid = Kid.find(params[:kid_id])
    @review = Review.new
  end
end
