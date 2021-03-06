require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { credit_card: @order.credit_card, date_of_delivery: @order.date_of_delivery, food_allergies: @order.food_allergies, name: @order.name, no_of_people: @order.no_of_people, special_requests: @order.special_requests }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { credit_card: @order.credit_card, date_of_delivery: @order.date_of_delivery, food_allergies: @order.food_allergies, name: @order.name, no_of_people: @order.no_of_people, special_requests: @order.special_requests }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
