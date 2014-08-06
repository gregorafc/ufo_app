class City < ActiveRecord::Base

  has_many :contacts

  validates :city_name, uniqueness: true


  def self.sort_all
    s = Contact.group(:city_id).order('object DESC').select(:city_id)
    s = s.map {|el| el.city_id}
    s.map {|index| City.find(index)}
  end

end
