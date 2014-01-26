class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description_url
      t.string :box_office_url

      t.timestamps
    end
  end
end
