class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def books
        render json: User.find(params[:id]).recipe_names
    end

    def create
        render json: User.create(user_params)
    end

    private

    def user_params
        params.permit(:username, :password, :nationality)
    end
end
