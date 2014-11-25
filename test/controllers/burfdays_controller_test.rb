require 'test_helper'

class BurfdaysControllerTest < ActionController::TestCase
  setup do
    @burfday = burfdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burfdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create burfday" do
    assert_difference('Burfday.count') do
      post :create, burfday: {  }
    end

    assert_redirected_to burfday_path(assigns(:burfday))
  end

  test "should show burfday" do
    get :show, id: @burfday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @burfday
    assert_response :success
  end

  test "should update burfday" do
    patch :update, id: @burfday, burfday: {  }
    assert_redirected_to burfday_path(assigns(:burfday))
  end

  test "should destroy burfday" do
    assert_difference('Burfday.count', -1) do
      delete :destroy, id: @burfday
    end

    assert_redirected_to burfdays_path
  end
end
