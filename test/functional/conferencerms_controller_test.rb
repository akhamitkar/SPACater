require 'test_helper'

class ConferencermsControllerTest < ActionController::TestCase
  setup do
    @conferencerm = conferencerms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conferencerms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conferencerm" do
    assert_difference('Conferencerm.count') do
      post :create, conferencerm: { number: @conferencerm.number }
    end

    assert_redirected_to conferencerm_path(assigns(:conferencerm))
  end

  test "should show conferencerm" do
    get :show, id: @conferencerm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conferencerm
    assert_response :success
  end

  test "should update conferencerm" do
    put :update, id: @conferencerm, conferencerm: { number: @conferencerm.number }
    assert_redirected_to conferencerm_path(assigns(:conferencerm))
  end

  test "should destroy conferencerm" do
    assert_difference('Conferencerm.count', -1) do
      delete :destroy, id: @conferencerm
    end

    assert_redirected_to conferencerms_path
  end
end
