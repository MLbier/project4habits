class AllertsController < ApplicationController
  def notify
    @slot_id = params[:id]
    @booking = Booking.find(params[:booking_id])

    @booking.update(status: true)

    client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
    client.messages.create({
    from: '+13253350403',
    to: '+4915259020002',
    body: 'Dear parent, your kid arrived on time at our club today. Have a calm day.'
    })

    redirect_to slot_bookings_path(slot_id: @slot_id)
  end


end
