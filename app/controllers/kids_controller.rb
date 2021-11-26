class KidsController < ApplicationController
  def index
    @kids = Kid.all
  end

  def new
    @kid = Kid.new
  end

  def show
    @kid = Kid.find(params[:id])
    @bookings = Booking.where(kid_id: @kid.id)
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

  def edit
    @kid = Kid.find(params[:id])
  end

  def update
    @kid = Kid.find(params[:id])
    if @kid.update(kid_params)
      redirect_to @kid, notice: 'kid profile successfully edited'
    else
      render :edit
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
