class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients
    has_many :instructions

    def info
        {
    name: self.name,
    ingredients: self.ingredients,
    instructions: self.instructions
    note: self.note
        }
    end
end
