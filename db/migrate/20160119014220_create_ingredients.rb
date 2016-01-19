class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :name, null: false
      t.text :type, null: false
      t.string :image

      t.timestamps null: false
    end
  end
end
