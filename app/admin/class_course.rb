ActiveAdmin.register ClassCourse, as: "Courses" do

  permit_params :id_num, :name, :description

  form do |f|
    f.inputs "Details" do
      f.input :id_num, label: "ID Number", hint: "i.e. IMP 101 or SKETCH 2"
      f.input :name, label: "Title of Class"
    end
    f.inputs do
      f.input :description, label: "Course Description"
    end
    f.actions
  end

  index do
    column :id_num, label: "Class ID"
    column :name, label: "Title"
    default_actions
  end

  filter :id_num, label: "Class ID"
  filter :name, label: "Title"
  
end
