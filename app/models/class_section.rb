class ClassSection < ActiveRecord::Base

  belongs_to :class_course
  belongs_to :location

  has_many :class_dates
  accepts_nested_attributes_for :class_dates, allow_destroy: true
end
