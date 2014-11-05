require 'test_helper'

class ConfroomsControllerTest < ActionController::TestCase
  setup do
    @confroom = confrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confroom" do
    assert_difference('Confroom.count') do
      post :create, confroom: { confroom_no: @confroom.confroom_no }
    end

    assert_redirected_to confroom_path(assigns(:confroom))
  end

  test "should show confroom" do
    get :show, id: @confroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confroom
    assert_response :success
  end

  test "should update confroom" do
    put :update, id: @confroom, confroom: { confroom_no: @confroom.confroom_no }
    assert_redirected_to confroom_path(assigns(:confroom))
  end

  test "should destroy confroom" do
    assert_difference('Confroom.count', -1) do
      delete :destroy, id: @confroom
    end

    assert_redirected_to confrooms_path
  end
end
