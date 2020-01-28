class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    3.times { @recipe.ingredients.build }
  end

  def create
  end
  
  def recipe_params
    return params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end
  
end
