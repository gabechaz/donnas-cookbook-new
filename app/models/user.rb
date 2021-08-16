class User < ApplicationRecord
    has_many :recipes
    has_many :ingredients, through: :recipes

    def recipe_info
        self.recipes.map{|recipe| {name: recipe.name, id: recipe.id}}
    end

end
