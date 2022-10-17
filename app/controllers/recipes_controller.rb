class RecipesController < ApplicationController
before_action :authorize

    def index 
       render json: Recipe.all, include: :user
    end

    def create 
       recipe = @current_user.recipes.create!(recipe_params)
    end

    private

    def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
    end
end
