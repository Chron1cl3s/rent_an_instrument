class DashboardsController < ApplicationController

  def index
    @bookings = current_user.bookings
    if current_user.instruments.any?
      @instruments = current_user.instruments
      @pending_incoming_bookings = Booking.where(instrument_id: @instruments.pluck(:id), status: "pending")
      @incoming_bookings = Booking.where(instrument_id: @instruments.pluck(:id), status: "accepted")
    end
  end

end
