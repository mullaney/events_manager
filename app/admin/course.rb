ActiveAdmin.register EventGroup do

  permit_params :name, :description

  form do |f|
    f.inputs "Course Details" do
      f.input :name
      f.input :description
    end
    f.inputs do
      f.has_many :events, :allow_destroy => true, :heading => 'Class Dates', :new_record => true do |cf|
        cf.input :start_time
        cf.input :end_time
        cf.input :location
      end
    end
    f.actions
  end

end