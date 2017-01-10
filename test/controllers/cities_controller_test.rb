require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should not get show" do
    get :show, id: 1
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal 'Brak autoryzacji', flash[:alert]
  end

  test "should not get new" do
    get :new
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal 'Brak autoryzacji', flash[:alert]
  end

end
