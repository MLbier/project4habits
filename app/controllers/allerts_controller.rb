class AllertsController < ApplicationController
  def notify
    @booking_id = params[:id]

    client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    client.messages.create({
    from: '+12077076871',
    to: '+4524777766',
    body: 'Hello there! This is a test'
    })

    redirect_to slot_bookings_path(slot_id: @booking_id)
  end


end
