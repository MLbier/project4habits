class SlotsController < ApplicationController
  def new
    @slot = Slot.new
  end
end
