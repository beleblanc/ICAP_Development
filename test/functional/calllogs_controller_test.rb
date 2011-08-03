require 'test_helper'

class CalllogsControllerTest < ActionController::TestCase
  setup do
    @calllog = calllogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calllogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calllog" do
    assert_difference('Calllog.count') do
      post :create, :calllog => @calllog.attributes
    end

    assert_redirected_to calllog_path(assigns(:calllog))
  end

  test "should show calllog" do
    get :show, :id => @calllog.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @calllog.to_param
    assert_response :success
  end

  test "should update calllog" do
    put :update, :id => @calllog.to_param, :calllog => @calllog.attributes
    assert_redirected_to calllog_path(assigns(:calllog))
  end

  test "should destroy calllog" do
    assert_difference('Calllog.count', -1) do
      delete :destroy, :id => @calllog.to_param
    end

    assert_redirected_to calllogs_path
  end
end
