class BookingsController < ApplicationController

def new
  @instrument = Instrument.find(params[:instrument_id])
  @booking = Booking.new
end

def create

    @booking = Booking.new(booking_params)
    @instrument = Instrument.find(params[:instrument_id])
    @booking.instrument = @instrument
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      flash[:notice] = "Booking Confirmed"
      redirect_to instruments_path
    else
      redirect_to instruments_path
    end
end

def index
  @instruments = Instrument.where(user_id: current_user.id)
end

def show
  set_booking
  @instrument = @booking.instrument
end

private

def booking_params
  params.require(:booking).permit(:status, :start_date, :end_date)
end

def set_booking
  @booking = Booking.find(params[:id])
end

end
