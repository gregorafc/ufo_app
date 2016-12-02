require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get new" do
  	get :new
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal 'Brak autoryzacji', flash[:alert]
  end

=begin
  test "should get create" do
  	assert_difference('Contact.count') do
    	get :create, contact: { date_contact: Date.today, object_number: 3, city_id: 1}
    end
    assert_redirected_to cities_path
  end
=end

end
