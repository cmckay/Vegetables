require 'test_helper'

class AntagonismsControllerTest < ActionController::TestCase
  setup do
    @antagonism = antagonisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:antagonisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create antagonism" do
    assert_difference('Antagonism.count') do
      post :create, antagonism: { first_id: @antagonism.first_id, second_id: @antagonism.second_id }
    end

    assert_redirected_to antagonism_path(assigns(:antagonism))
  end

  test "should show antagonism" do
    get :show, id: @antagonism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @antagonism
    assert_response :success
  end

  test "should update antagonism" do
    put :update, id: @antagonism, antagonism: { first_id: @antagonism.first_id, second_id: @antagonism.second_id }
    assert_redirected_to antagonism_path(assigns(:antagonism))
  end

  test "should destroy antagonism" do
    assert_difference('Antagonism.count', -1) do
      delete :destroy, id: @antagonism
    end

    assert_redirected_to antagonisms_path
  end
end
