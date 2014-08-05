require 'test_helper'

class CityTest < ActiveSupport::TestCase

    test "city sholud save" do 
      city = City.new(city_name: "Ustka")
      assert_equal true, city.save, "City save"      
    end

    test "city should have uniqe name" do
      city = cities(:opole).city_name
      dub = City.new(city_name: city)
      assert_equal false, dub.save, "Save with same city_name"
      assert dub.errors.messages[:city_name], "No errors"
    end

    test "city should have contacts associations" do
      city_contacts = cities(:opole).contacts
      assert_equal true, city_contacts, "City dont have associations"
    end


end
