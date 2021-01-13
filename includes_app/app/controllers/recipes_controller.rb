class RecipesController < ApplicationController
  def index
    # @recipes = Recipe.all
    @recipes = Recipe.includes(:user)
  end
end
