require 'test_helper'

class Admin::BlogEntriesControllerTest < ActionController::TestCase
  setup do
    @admin_blog_entry = admin_blog_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_blog_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_blog_entry" do
    assert_difference('Admin::BlogEntry.count') do
      post :create, admin_blog_entry: {  }
    end

    assert_redirected_to admin_blog_entry_path(assigns(:admin_blog_entry))
  end

  test "should show admin_blog_entry" do
    get :show, id: @admin_blog_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_blog_entry
    assert_response :success
  end

  test "should update admin_blog_entry" do
    patch :update, id: @admin_blog_entry, admin_blog_entry: {  }
    assert_redirected_to admin_blog_entry_path(assigns(:admin_blog_entry))
  end

  test "should destroy admin_blog_entry" do
    assert_difference('Admin::BlogEntry.count', -1) do
      delete :destroy, id: @admin_blog_entry
    end

    assert_redirected_to admin_blog_entries_path
  end
end
