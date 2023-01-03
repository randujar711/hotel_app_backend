class HotelsController < ApplicationController
    def index 
        render json: Hotel.all
    end 
    def show 
        render json: find_by!(id: params[:id])
    end
end
