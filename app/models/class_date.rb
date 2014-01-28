class ClassDate < ActiveRecord::Base
  belongs_to :class_section
  validates :start_time, :presence => true
  validates :end_time, :presence => true

end
