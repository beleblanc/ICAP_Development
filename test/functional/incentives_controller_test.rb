require 'test_helper'

class IncentivesControllerTest < ActionController::TestCase
  setup do
    @incentive = incentives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incentives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incentive" do
    assert_difference('Incentive.count') do
      post :create, :incentive => @incentive.attributes
    end

    assert_redirected_to incentive_path(assigns(:incentive))
  end

  test "should show incentive" do
    get :show, :id => @incentive.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @incentive.to_param
    assert_response :success
  end

  test "should update incentive" do
    put :update, :id => @incentive.to_param, :incentive => @incentive.attributes
    assert_redirected_to incentive_path(assigns(:incentive))
  end

  test "should destroy incentive" do
    assert_difference('Incentive.count', -1) do
      delete :destroy, :id => @incentive.to_param
    end

    assert_redirected_to incentives_path
  end
end
