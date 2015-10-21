class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.timestamps
    end

    remove_column :locations, :area
    add_column :locations, :area_id, :integer
  end
end
