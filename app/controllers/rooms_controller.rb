class RoomsController < ApplicationController
    def index 
        render json: Room.all
    end

    def show 
        render json: find_by!(id: params[:id])
    end

    def update 
        room = find_by!(id: params[:id])
        if @room.is_available? 
            @room.update(is_available:false)
        else 
            @room.update(is_available:true)
        render json: room
        end
    end

end
