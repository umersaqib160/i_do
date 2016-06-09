class Customer::ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def show
    @resevation = Reservation.find(params[:id])
  end
end
