class AddLocations < ActiveRecord::Migration
  def change
    create_table(:locations) do |t|
      t.string :name
      t.string :description
      t.string :area

      t.timestamps
    end
    add_column :items, :location_id, :integer
  end
end
