class UsersController < ApplicationController
    def create
        user = User.create!(
        first_name: params[:first_name], 
        last_name: params[:last_name],
        email: params[:email],
        password_digest: params[:password_digest],
        phone: params[:phone],
        )
        render json: user
    end

    def update
        user = User.find_by!(id: params[:id])
        user.update!(valid_user_params)
        render json: user
    end
    
    def destroy
        user = User.find_by!(id: params[:id])
        user.destroy!
        render json: user
    end
    private 
    
    def valid_user_params 
        params.permit(:first_name, :last_name, :phone)
    end 
end
