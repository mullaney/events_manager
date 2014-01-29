ActiveAdmin.register ClassDate, as: "Dates" do

  permit_params :start_time, :end_time, :class_section_id

  belongs_to :class_section

  def formatted_date_time
  end
  
end
