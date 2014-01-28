# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :class_section do
    class_course_id 1
    min_students 1
    max_students 1
    location_id 1
    info "MyText"
  end
end
