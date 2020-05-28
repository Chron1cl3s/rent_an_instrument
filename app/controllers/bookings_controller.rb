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
      @booking.status = "pending"
      @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @booking.instrument.price_per_day
      if @booking.save
        redirect_to user_dashboards_path(current_user)
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

  def edit
    set_booking
    @booking = Booking.find(params[:id])
  end

  def update
    set_booking
    @booking = Booking.update(params)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
