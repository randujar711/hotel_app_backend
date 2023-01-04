class HotelsController < ApplicationController
    def index 
        render json: Hotel.all
    end 
    def show 
        render json: Hotel.find_by!(id: params[:id])
    end
end
