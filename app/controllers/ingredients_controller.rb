class IngredientsController < ApplicationController


    def index
        render json: Ingredient.all
    end

    def show
        render json: Ingredient.find(params[:id])
    end

    def create
        render json: Ingredient.create(ingredient_params)
    end

    private

    def ingredient_params
        params.permit(:name, :recipe_id)
    end
end
