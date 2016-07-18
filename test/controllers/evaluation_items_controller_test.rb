require 'test_helper'

class EvaluationItemsControllerTest < ActionController::TestCase
  setup do
    @evaluation_item = evaluation_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_item" do
    assert_difference('EvaluationItem.count') do
      post :create, evaluation_item: { title: @evaluation_item.title }
    end

    assert_redirected_to evaluation_item_path(assigns(:evaluation_item))
  end

  test "should show evaluation_item" do
    get :show, id: @evaluation_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_item
    assert_response :success
  end

  test "should update evaluation_item" do
    patch :update, id: @evaluation_item, evaluation_item: { title: @evaluation_item.title }
    assert_redirected_to evaluation_item_path(assigns(:evaluation_item))
  end

  test "should destroy evaluation_item" do
    assert_difference('EvaluationItem.count', -1) do
      delete :destroy, id: @evaluation_item
    end

    assert_redirected_to evaluation_items_path
  end
end
