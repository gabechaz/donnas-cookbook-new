class UsersController < ApplicationController

    before_action :authenticate, only: [:me]

    def index

        render json: User.all.map {|user| user.user_info}
    end

    def show
        x = User.find(params[:id]).user_info
        render json: x
    end

    def me
        render json: @current_user
    end


    #This method is so the front end has a route to pull just the names of the recipes of any given user. 
    def books
        render json: User.find(params[:id]).recipe_info
    end

    def create
        user =  User.create(user_params)
        token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
        if user.id
            render json: {user: user, token: token}, status: :created
        else
            puts user.errors.full_messages
            render json: {errors: user.errors.full_messages}
        end

    end

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
          token = JWT.encode({user_id: user.id}, 'codename', 'HS256')
          render json: {user: user, token: token}
        else
          render json: {errors: ['Try again loser!']}
        end
    end

    def logout 
        @current_user = nil
    end

    private

    def user_params
        params.permit(:username, :password, :nationality)
    end
end
