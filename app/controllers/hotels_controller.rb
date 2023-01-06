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
end
