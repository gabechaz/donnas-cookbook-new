class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end


    #This method is so the front end has a route to pull just the names of the recipes of any given user. 
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
