require 'test_helper'

class CityTest < ActiveSupport::TestCase

    test "city sholud save" do 
      city = City.new(city_name: "Ustka")
      assert_equal true, city.save, "City save"      
    end

end
