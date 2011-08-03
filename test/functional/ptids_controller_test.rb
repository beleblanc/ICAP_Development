require 'test_helper'

class PtidsControllerTest < ActionController::TestCase
  setup do
    @ptid = ptids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptid" do
    assert_difference('Ptid.count') do
      post :create, :ptid => @ptid.attributes
    end

    assert_redirected_to ptid_path(assigns(:ptid))
  end

  test "should show ptid" do
    get :show, :id => @ptid.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ptid.to_param
    assert_response :success
  end

  test "should update ptid" do
    put :update, :id => @ptid.to_param, :ptid => @ptid.attributes
    assert_redirected_to ptid_path(assigns(:ptid))
  end

  test "should destroy ptid" do
    assert_difference('Ptid.count', -1) do
      delete :destroy, :id => @ptid.to_param
    end

    assert_redirected_to ptids_path
  end
end
