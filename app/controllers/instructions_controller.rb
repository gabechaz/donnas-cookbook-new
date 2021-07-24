class InstructionsController < ApplicationController

def create
    render json: Instruction.create(instruction_params)
end

def show
    render json: Instruction.find(params[:id])
end

private

def instruction_params
    params.permit(:recipe_id, :instruction, :next)
end

end
