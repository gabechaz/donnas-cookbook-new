class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients
    has_many :instructions

    def info
        {
    name: self.name,
    ingredients: self.ingredients,
    instructions: self.instructions,
    note: self.note
        }
    end

    def recipes_by_ingredient(ingredient)
        Recipe.all.select {|r| r.ingredients.include(ingredient)}
    end
end
