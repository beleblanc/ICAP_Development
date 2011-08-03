require 'test_helper'

class NarrativesControllerTest < ActionController::TestCase
  setup do
    @narrative = narratives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:narratives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create narrative" do
    assert_difference('Narrative.count') do
      post :create, :narrative => @narrative.attributes
    end

    assert_redirected_to narrative_path(assigns(:narrative))
  end

  test "should show narrative" do
    get :show, :id => @narrative.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @narrative.to_param
    assert_response :success
  end

  test "should update narrative" do
    put :update, :id => @narrative.to_param, :narrative => @narrative.attributes
    assert_redirected_to narrative_path(assigns(:narrative))
  end

  test "should destroy narrative" do
    assert_difference('Narrative.count', -1) do
      delete :destroy, :id => @narrative.to_param
    end

    assert_redirected_to narratives_path
  end
end
