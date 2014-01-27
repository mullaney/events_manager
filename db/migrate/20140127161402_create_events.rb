class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :event_group_id
      t.integer :location_id
      t.text :description

      t.timestamps
    end
  end
end
