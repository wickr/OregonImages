class AddLocationToCulturalProperties < ActiveRecord::Migration
  def change
    add_reference :cultural_properties, :location, index: true, foreign_key: true
  end
end
