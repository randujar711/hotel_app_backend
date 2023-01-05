class ReservationsController < ApplicationController

  def create 
    ressy = Reservation.create!()

end
