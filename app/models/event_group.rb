class EventGroup < ActiveRecord::Base
  validates :name, presence: true
  
  has_many :events
  has_many :locations, through: :events
end
