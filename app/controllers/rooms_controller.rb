class RoomsController < ApplicationController
    def index 
        render json: Room.all
    end

    def show 
        render json: find_by!(id: params[:id])
    end

end
