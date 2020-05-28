class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
    @users = User.geocoded # returns user with coordinates

    @markers = @users.map do |flat|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
    redirect_to instruments_path
    else
      render :new
    end
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :description, :category, :photo, :price_per_day)
  end

end
