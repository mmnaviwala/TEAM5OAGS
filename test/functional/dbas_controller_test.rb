require 'test_helper'

class DbasControllerTest < ActionController::TestCase
  setup do
    @dba = dbas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dbas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dba" do
    assert_difference('Dba.count') do
      post :create, dba: {  }
    end

    assert_redirected_to dba_path(assigns(:dba))
  end

  test "should show dba" do
    get :show, id: @dba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dba
    assert_response :success
  end

  test "should update dba" do
    put :update, id: @dba, dba: {  }
    assert_redirected_to dba_path(assigns(:dba))
  end

  test "should destroy dba" do
    assert_difference('Dba.count', -1) do
      delete :destroy, id: @dba
    end

    assert_redirected_to dbas_path
  end
end
