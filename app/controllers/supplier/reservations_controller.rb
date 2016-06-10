class Supplier::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(param[:id])
  end

  def confirm
  end

  def decline
  end
end
