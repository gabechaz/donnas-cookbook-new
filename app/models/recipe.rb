class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredients
    has_many :instructions

    # def info
    #     self.
    # end
end
