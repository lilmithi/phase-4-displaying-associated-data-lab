class UsersController < ApplicationController

    def show
        user= User.find_by(user_params)
        render json: user, include: :items, status: :ok
    end

    private

    def user_params
        params.permit(:name, :description, :price)
    end
end
