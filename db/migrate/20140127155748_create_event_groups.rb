class CreateEventGroups < ActiveRecord::Migration
  def change
    create_table :event_groups do |t|
      t.string :name
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
