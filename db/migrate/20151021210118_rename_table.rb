class RenameTable < ActiveRecord::Migration
  def change
    rename_table :users_items, :items_users
  end
end
