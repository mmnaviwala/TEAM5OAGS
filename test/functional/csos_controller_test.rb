require 'test_helper'

class CsosControllerTest < ActionController::TestCase
  setup do
    @cso = csos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cso" do
    assert_difference('Cso.count') do
      post :create, cso: {  }
    end

    assert_redirected_to cso_path(assigns(:cso))
  end

  test "should show cso" do
    get :show, id: @cso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cso
    assert_response :success
  end

  test "should update cso" do
    put :update, id: @cso, cso: {  }
    assert_redirected_to cso_path(assigns(:cso))
  end

  test "should destroy cso" do
    assert_difference('Cso.count', -1) do
      delete :destroy, id: @cso
    end

    assert_redirected_to csos_path
  end
end
