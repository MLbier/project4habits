class AllertsController < ApplicationController
  def new
    @allert = Allert.new
  end
end
