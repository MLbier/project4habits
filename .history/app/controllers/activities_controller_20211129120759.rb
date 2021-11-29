class ActivitiesController < ApplicationController
  def index
    # @activities = Activity.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @activities = Activity.where(sql_query, query: "%#{params[:query]}%")
    else
      @activities = Activity.all
    end
    # @markers = @activities.geocoded.map do |activity|
    #   {
    #     lat: activity.latitude,
    #     lng: activity.longitude
    #   }
    # end
  end

  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
    @user = current_user
    @kids = Kid.where(["user_id = '%s'", @user.id])
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      redirect_to @activity, notice: 'Activity was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy!
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :price, :location, :availability, :photo)
  end
end
