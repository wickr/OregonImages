class CreateCulturalProperties < ActiveRecord::Migration
  def change
    create_table :cultural_properties do |t|
      t.string :title
      t.text :description
      t.string :address

      t.timestamps null: false
    end
  end
end
