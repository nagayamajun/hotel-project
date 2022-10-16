class ReservationsController < ApplicationController
  def new
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = @hotel.reservations.new
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to hotel_reservations_path(@hotel)
    end
  end
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = Reservation.find(parms[:id])
  def show

  end

  def reservation_params
    params.require(:reservation).permit(:name, :email, :checkin, :checkout, :number)
  end
end



