class RecipesController < ApplicationController


    def index
        render json: Recipe.all
    end

    def show
        render json: Recipe.find(params[:id]).info
    end

    def create
        render json: Recipe.create(recipe_params)
    end

    private

    def recipe_params
        params.permit(:name, :user_id, :note)
    end
end
