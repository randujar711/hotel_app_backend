class UsersController < ApplicationController
    def update
        user = User.find_by!(id: params[:id])
        user.update!(valid_user_params)
        render json: user
    end

    private 
    
    def valid_user_params 
        params.permit(:first_name, :last_name, :phone)
    end 
end
