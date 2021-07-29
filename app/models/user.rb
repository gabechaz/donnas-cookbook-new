class User < ApplicationRecord
    has_many :recipes
    has_many :ingredients, through: :recipes

    def recipe_names
        self.recipes.map{|recipe| recipe.name}
    end

end
