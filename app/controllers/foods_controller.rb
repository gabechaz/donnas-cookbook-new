class FoodsController < ApplicationController

    def index
        render json: Food.all
    end

    def show
        render json: Food.all
    end

    def create
        render json: Food.create(food_params)
    end

    private

    def food_params
        params.permit(:name)
    end
end
