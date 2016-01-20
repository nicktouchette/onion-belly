class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :larders, :supplies
  end
end
