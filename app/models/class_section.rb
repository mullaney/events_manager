class ClassSection < ActiveRecord::Base
  validates :cost_in_cents, :numericality => { :greater_than_or_equal_to => 0 }
  validates :min_students, :numericality => { :greater_than_or_equal_to => 0 }
  validates :max_students, :numericality => { :greater_than_or_equal_to => 0 }
  validate :max_students_must_be_greater_than_min_students

  belongs_to :class_course
  belongs_to :location

  has_many :class_dates
  accepts_nested_attributes_for :class_dates, allow_destroy: true

  def published?
    false
  end

  def in_session?
    false
  end

  def currently_registering?
    false
  end

  def cost_in_dollars
    if cost_in_cents == 0 
      "FREE"
    else
      "$#{cost_in_cents / 100.0}0"
    end
  end

  def begins
    self.class_dates.order('start_time ASC').limit(1).first.start_time
  end

  def ends
    self.class_dates.order('end_time DESC').limit(1).first.end_time
  end

  def max_students_must_be_greater_than_min_students
    if min_students > max_students
      errors.add(:max_students, "Max students must be greater than min students.")
    end
  end

end
