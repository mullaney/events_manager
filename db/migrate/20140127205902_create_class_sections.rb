class CreateClassSections < ActiveRecord::Migration
  def change
    create_table :class_sections do |t|
      t.integer :class_course_id
      t.integer :min_students
      t.integer :max_students
      t.integer :location_id
      t.text :info

      t.timestamps
    end
  end
end
