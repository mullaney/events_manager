ActiveAdmin.register ClassSection do

  permit_params :max_students, :min_students, :info, :class_course_id, :location_id

    controller do
      def permitted_params
        params.permit!
      end
    end

  form do |f|
    f.inputs "Details" do
      f.input :class_course, member_label: :id_num
      f.input :min_students, label: "Minunum Students"
      f.input :max_students, label: "Maxiumum Students"
      f.input :location
    end
    f.inputs do
      f.input :info, label: "Additional Information"
    end
    f.inputs "Dates" do
      f.has_many :class_dates, heading: false do |cd|
        cd.input :start_time, :as => :datetime_picker
        cd.input :end_time, :as => :datetime_picker
      end
    end
    f.actions
  end

  index do
    column :class_course
    column :location
    default_actions
  end

  filter :class_course
  filter :location

  show do |cs|
    attributes_table do
      row :class_course do
        cs.class_course.id_num + " - " + cs.class_course.name
      end
      row :location
      row :min_students, label: "Minunum Students"
      row :max_students, label: "Maxiumum Students"
      row :info, label: "Additional Information"
    end

    panel "Dates" do
      attributes_table_for class_section.class_dates do
        rows :start_time, :end_time
      end
    end
    active_admin_comments
  end 
 
end
