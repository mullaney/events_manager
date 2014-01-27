# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    start_time "2014-01-27 10:14:03"
    end_time "2014-01-27 10:14:03"
    event_group_id 1
    location_id 1
    description "This is the description of the event."
  end
end
