class DashboardsController < ApplicationController

  def index
    @user = current_user
    @bookings = current_user.bookings
    if current_user.instruments.any?
      @instruments = current_user.instruments
      @pending_incoming_bookings = Booking.where(instrument_id: @instruments.pluck(:id), status: "pending")
      @incoming_bookings = Booking.where(instrument_id: @instruments.pluck(:id), status: "accept")
    end
  end

  def edit
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def update
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking = Booking.update(params)
    @booking.save
  end

  def skip_pundit?
    true
  end
end
