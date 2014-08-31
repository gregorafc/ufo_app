require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create, contact: { date_contact: Date.today, object_number: 3, city_id: 1}
    assert_redirected_to cities_path
  end

end
