class AddCulturalPropertyToImages < ActiveRecord::Migration
  def change
    add_reference :images, :cultural_property, index: true, foreign_key: true
  end
end
