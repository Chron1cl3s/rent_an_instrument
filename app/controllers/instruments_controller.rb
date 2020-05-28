class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    # @instruments = Instrument.all
    @instruments = policy_scope(Instrument)
    @notice = params[:notice]

  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
    authorize @instrument
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    authorize @instrument
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
