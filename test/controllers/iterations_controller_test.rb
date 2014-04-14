require 'test_helper'

class IterationsControllerTest < ActionController::TestCase
  setup do
    @iteration = iterations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iterations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iteration" do
    assert_difference('Iteration.count') do
      post :create, iteration: { description: @iteration.description, name: @iteration.name, project_id: @iteration.project_id, time_end: @iteration.time_end, time_start: @iteration.time_start }
    end

    assert_redirected_to iteration_path(assigns(:iteration))
  end

  test "should show iteration" do
    get :show, id: @iteration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iteration
    assert_response :success
  end

  test "should update iteration" do
    patch :update, id: @iteration, iteration: { description: @iteration.description, name: @iteration.name, project_id: @iteration.project_id, time_end: @iteration.time_end, time_start: @iteration.time_start }
    assert_redirected_to iteration_path(assigns(:iteration))
  end

  test "should destroy iteration" do
    assert_difference('Iteration.count', -1) do
      delete :destroy, id: @iteration
    end

    assert_redirected_to iterations_path
  end
end
