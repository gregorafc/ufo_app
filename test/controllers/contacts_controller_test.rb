require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get new" do
  	get :new
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal 'Brak autoryzacji', flash[:alert]
  end

end
