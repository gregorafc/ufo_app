class City < ActiveRecord::Base

  has_many :contacts

#    validates :city_name, uniqueness: true

  scope :top, -> { order('contacts_count desc') }
  
  def sum_object
    contacts.map(&:object_number).inject(:+)
  end

end
