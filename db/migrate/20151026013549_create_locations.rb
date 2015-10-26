class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.text :description
      t.string :county
      t.float :lat
      t.float :lng

      t.timestamps null: false
    end
  end
end
