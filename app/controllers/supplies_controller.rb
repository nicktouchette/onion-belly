class SuppliesController < ApplicationController
  before_action :set_user

  def index
    @supplies = @user.ingredients.all
  end

  def show
    @supply = @user.supplies.find(params[:id])
  end

  def create
    @ingredient = Ingredient.find(params[:add_ingredient])
    @user.supplies.create(ingredient: @ingredient)
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end
end
