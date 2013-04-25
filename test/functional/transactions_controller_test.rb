require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { acquisition_price: @transaction.acquisition_price, asking_price: @transaction.asking_price, customer_id: @transaction.customer_id, date_acquired: @transaction.date_acquired, date_sold: @transaction.date_sold, sales_price: @transaction.sales_price, work_id: @transaction.work_id }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    put :update, id: @transaction, transaction: { acquisition_price: @transaction.acquisition_price, asking_price: @transaction.asking_price, customer_id: @transaction.customer_id, date_acquired: @transaction.date_acquired, date_sold: @transaction.date_sold, sales_price: @transaction.sales_price, work_id: @transaction.work_id }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
