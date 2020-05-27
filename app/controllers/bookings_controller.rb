class BookingsController < ApplicationController

# def create
#     @instrument = Instrument.find(params[:instrument_id])
#     @booking = Booking.new(booking_params)
#     @booking.instrument = @instrument
#     @booking.user = current_user
#     @booking.status = "Pending"
#     if @booking.save
#       redirect_to booking_path(@booking)
#     else
#       redirect_to instrument_path(@instrument)
#     end
#   end

#   def index
#     @instruments = Instrument.where(user_id: current_user.id)
#   end

#   def show
#     set_booking
#     @instrument = @booking.instrument
#   end

#   def update
#     set_booking
#     @booking.status = "Pending"
#     @booking.save!
#     redirect_to booking_path(@booking)
#   end

#   def destroy
#     set_booking
#     @booking.destroy
#     redirect_to root_path
#   end

#   private

#   def booking_params
#     params.require(:booking).permit(:status)
#   end

#   def set_booking
#     @booking = Booking.find(params[:id])
#   end

end
