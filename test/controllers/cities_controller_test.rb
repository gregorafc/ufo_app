require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: 1
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal 'Brak autoryzacji', flash[:alert]
  end

  test "should get new" do
    get :new
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal 'Brak autoryzacji', flash[:alert]
  end


=begin
  test "should get create" do
    assert_difference('City.count') do
      get :create, city: { city_name: "Tarnów"}
    end
    assert_redirected_to city_path(assigns(:city)) 
  end
=end

end
