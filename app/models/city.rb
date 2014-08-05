class City < ActiveRecord::Base

  has_many :contacts

  validates :city_name, uniqueness: true

end
