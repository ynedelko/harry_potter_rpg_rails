class AddSomeModels < ActiveRecord::Migration
  def change
    create_table(:items) do |t|
      t.column :name, :string
      t.column :description, :string

      t.timestamps
    end

    create_table(:users_items) do |t|
      t.column :user_id, :integer
      t.column :item_id, :integer

      t.timestamps
    end
  end
end
