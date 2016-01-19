class CreateLarders < ActiveRecord::Migration
  def change
    create_table :larders do |t|
      t.integer :owner_id, null: false
      t.integer :ingredient_id, null: false

      t.timestamps null: false
    end
  end
end
