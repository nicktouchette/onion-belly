module SuppliesHelper
  def get_supplies
    @user = User.find(current_user.id)
    @supplies = @user.ingredients.all
    render :supply_list, :layout => false
  end
end
