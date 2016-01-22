class SuppliesController < ApplicationController
  before_action :set_user

  def index
    @supplies = @user.ingredients.all
    render :index, :layout => false
  end

  def create
    @ingredient = Ingredient.find_by(name: create_params[:ingredient])
    if !@ingredient.blank?
      @user.supplies.create(ingredient: @ingredient)
    end
  end

  def destroy
    @user.ingredients.destroy(params[:id])
    render :index, :layout => false
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def create_params
    params.require(:add).permit(:ingredient)
  end
end
