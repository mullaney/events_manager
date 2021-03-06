class Location < ActiveRecord::Base
	validates :name, presence: true
	validates :box_office_url, format: URI::regexp(%w(http https)), allow_blank: true
  validates :website_url,    format: URI::regexp(%w(http https)), allow_blank: true
end
