class KidsController < ApplicationController
  def index
    @kids = Kid.all
  end

  def new
    @kid = Kids.new
  end

  def show
    @kid = Kid.find(params[:id])
    @activities = Activity.all
    @slots = Slot.all
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.user = current_user
    if @kid.save
      redirect_to kid_path(@kid)
    else
      render :new
    end
  end

  def destroy
    @kid = Kid.find(params[:id])
    @kid.destroy!
    redirect_to kids_path
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :last_name, :age, :gender)
  end
end
