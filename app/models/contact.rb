class Contact < ActiveRecord::Base

  belongs_to :city, counter_cache: true


end
