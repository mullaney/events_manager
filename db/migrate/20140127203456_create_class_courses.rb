class CreateClassCourses < ActiveRecord::Migration
  def change
    create_table :class_courses do |t|
      t.string :id_num
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :class_courses, :id_num
  end
end
