class ChangeColumnNameInIngredients < ActiveRecord::Migration
  def change
    rename_column :supplies, :owner_id, :user_id
  end
end
