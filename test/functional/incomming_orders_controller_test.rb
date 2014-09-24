require 'test_helper'

class IncommingOrdersControllerTest < ActionController::TestCase
  setup do
    @incomming_order = incomming_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomming_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incomming_order" do
    assert_difference('IncommingOrder.count') do
      post :create, incomming_order: { seller_id: @incomming_order.seller_id }
    end

    assert_redirected_to incomming_order_path(assigns(:incomming_order))
  end

  test "should show incomming_order" do
    get :show, id: @incomming_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incomming_order
    assert_response :success
  end

  test "should update incomming_order" do
    put :update, id: @incomming_order, incomming_order: { seller_id: @incomming_order.seller_id }
    assert_redirected_to incomming_order_path(assigns(:incomming_order))
  end

  test "should destroy incomming_order" do
    assert_difference('IncommingOrder.count', -1) do
      delete :destroy, id: @incomming_order
    end

    assert_redirected_to incomming_orders_path
  end
end
