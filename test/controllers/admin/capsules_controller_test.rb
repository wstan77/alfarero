require 'test_helper'

class Admin::CapsulesControllerTest < ActionController::TestCase
  setup do
    @admin_capsule = admin_capsules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_capsules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_capsule" do
    assert_difference('Admin::Capsule.count') do
      post :create, admin_capsule: {  }
    end

    assert_redirected_to admin_capsule_path(assigns(:admin_capsule))
  end

  test "should show admin_capsule" do
    get :show, id: @admin_capsule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_capsule
    assert_response :success
  end

  test "should update admin_capsule" do
    patch :update, id: @admin_capsule, admin_capsule: {  }
    assert_redirected_to admin_capsule_path(assigns(:admin_capsule))
  end

  test "should destroy admin_capsule" do
    assert_difference('Admin::Capsule.count', -1) do
      delete :destroy, id: @admin_capsule
    end

    assert_redirected_to admin_capsules_path
  end
end
