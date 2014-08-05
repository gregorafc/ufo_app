class City < ActiveRecord::Base

  validates :city_name, uniqueness: true

end
