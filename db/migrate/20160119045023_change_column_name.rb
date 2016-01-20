class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :ingredients, :type, :food_group
  end
end
