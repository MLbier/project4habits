class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def book_activity
    @kid = Kid.find(params[:kid_id])
    @activities = Activity.all
  end

  def choose_kid
    @user = current_user
    @kids = Kid.where(@user)
    @activities = Activity.all
  end

end
