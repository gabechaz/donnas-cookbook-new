class RecipesController < ApplicationController


    def index
        render json: Recipe.all
    end

    def show
        render json: Recipe.find(params[:id])
    end

    def create
        render json: Recipe.create(recipe_params)
    end

    private

    def recipe_params
        params.permit(:name, :user_id)
    end
end
