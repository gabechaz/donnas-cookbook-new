class User < ApplicationRecord
    has_secure_password
    has_many :recipes
    has_many :ingredients, through: :recipes
    validates :username, uniqueness: true

    def recipe_info
        self.recipes.map{|recipe| {name: recipe.name, id: recipe.id}}
    end

    def user_info
        {
            id: self.id,
            username: self.username,
            recipeCount: self.recipes.length
        }
    end

    

end
