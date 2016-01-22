module IngredientsHelper
  def top_ingredients
    @all = Ingredient.all
  end
end
