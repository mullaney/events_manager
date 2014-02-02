class ClassDate < ActiveRecord::Base
  belongs_to :class_section

  validates :start_time, :presence => true
  validates :end_time, :presence => true
  validate  :end_time_must_be_greater_than_start_time,
            :end_time_must_not_be_greater_than_24_hours_after_start_time

  def end_time_must_be_greater_than_start_time
    if start_time > end_time
      errors.add(:end_time, "End time must be after start time.")
    end
  end

  def end_time_must_not_be_greater_than_24_hours_after_start_time
    if start_time < end_time - 1.day
      errors.add(:end_time, "End time cannot be more than 24 hours after start time.")
    end
  end
end
