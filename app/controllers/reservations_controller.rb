class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.create
  end

  def new
    @reservation = Reservation.new
  end

end
