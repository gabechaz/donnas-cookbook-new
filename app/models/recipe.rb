class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients
    has_many :instructions

    def info
        {
    name: self.name,
    ingredients: self.ingredients.reverse,
    instructions: self.instructions.reverse
        }
    end
end
