class Event < ActiveRecord::Base
  validates :start_time, presence: true
  
  belongs_to :location
  belongs_to :event_group
end
