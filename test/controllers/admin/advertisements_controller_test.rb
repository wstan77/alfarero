require 'test_helper'

class Admin::AdvertisementsControllerTest < ActionController::TestCase
  setup do
    @admin_advertisement = admin_advertisements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_advertisements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_advertisement" do
    assert_difference('Admin::Advertisement.count') do
      post :create, admin_advertisement: {  }
    end

    assert_redirected_to admin_advertisement_path(assigns(:admin_advertisement))
  end

  test "should show admin_advertisement" do
    get :show, id: @admin_advertisement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_advertisement
    assert_response :success
  end

  test "should update admin_advertisement" do
    patch :update, id: @admin_advertisement, admin_advertisement: {  }
    assert_redirected_to admin_advertisement_path(assigns(:admin_advertisement))
  end

  test "should destroy admin_advertisement" do
    assert_difference('Admin::Advertisement.count', -1) do
      delete :destroy, id: @admin_advertisement
    end

    assert_redirected_to admin_advertisements_path
  end
end
