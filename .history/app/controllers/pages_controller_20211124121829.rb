class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def kids-bookings
    @bookings = Booking.all
    @kids = Kid.all
    @chef = current_user.listings.any?
    @kid_bookings = current_user.bookings
    if @chef
    @my_listings = current_user.listings
    @bookings_requests = Booking.where(listing_id: @my_listings.pluck(:id))
    end
  end
end
