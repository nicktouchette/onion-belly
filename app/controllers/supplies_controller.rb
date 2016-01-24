class SuppliesController < ApplicationController
  before_action :set_user

  def index
    @supplies = @user.ingredients.all
    @supply = Supply.new
  end

  def create
    @supply = @user.supplies.new
    @ingredient = get_params[:name]

    if !get_params[:id].blank?
      @supply.ingredient_id = Ingredient.find(get_params[:id]).id
    else
      @supply.ingredient_id = Ingredient.find_by(name: get_params[:name]).id
    end

    respond_to do |format|
      if @supply.save
        format.html { redirect_to @supply, notice: 'Supply was successfully created.' }
        format.js   {}
        format.json { render json: @supply, status: :created, location: @supply }
      else
        format.json { render json: @supply.errors, status: :bad_request }
      end
    end
  end

  def destroy
    ingredient = @user.ingredients.destroy(params[:id])
    render plain: ingredient
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def get_params
    params.require(:supply).permit(:id, :name)
  end
end
