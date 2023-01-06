class ReservationsController < ApplicationController

  def create
      reservation = Reservation.create!(user_id: 1)
        ActionCable.server.broadcast('live_feed', {
          post: reservation
      })
      render json: reservation

end
