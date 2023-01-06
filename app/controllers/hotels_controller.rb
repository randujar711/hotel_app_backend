class HotelsController < ApplicationController
    def index 
        render json: Hotel.all
    end 
    def show 
        render json: Hotel.find_by!(id: params[:id])
    end
    def popups
      ActionCable.server.broadcast('live_view', {notification: {message: "Reservation Made!"}})
      render json: {success: true}, status: 200
    end

    def update
      hotel = Hotel.find_by!(id: params[:id])
      hotel.update!(rooms_available: hotel.rooms_available - 1)
      if hotel.valid?
        render json: hotel
      else render json: hotel.error.full_messages, status: 422
      end

    end
    # private 
    
    # def valid_reservation_params 
    #     params.permit(:active, :user_id)
    # end 

end
