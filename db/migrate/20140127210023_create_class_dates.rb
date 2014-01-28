class CreateClassDates < ActiveRecord::Migration
  def change
    create_table :class_dates do |t|
      t.integer :class_section_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
