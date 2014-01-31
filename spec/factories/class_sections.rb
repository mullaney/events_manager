# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :class_section do
    class_course_id 1
    min_students 6
    max_students 12
    location_id 1
    info "MyText"
    cost_in_cents 25000
    published_at Date.today
  end
end
