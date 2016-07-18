require 'test_helper'

class SelectedEvaluationItemsControllerTest < ActionController::TestCase
  setup do
    @selected_evaluation_item = selected_evaluation_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selected_evaluation_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selected_evaluation_item" do
    assert_difference('SelectedEvaluationItem.count') do
      post :create, selected_evaluation_item: { evaluation_item_id: @selected_evaluation_item.evaluation_item_id, importance: @selected_evaluation_item.importance, user_id: @selected_evaluation_item.user_id }
    end

    assert_redirected_to selected_evaluation_item_path(assigns(:selected_evaluation_item))
  end

  test "should show selected_evaluation_item" do
    get :show, id: @selected_evaluation_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selected_evaluation_item
    assert_response :success
  end

  test "should update selected_evaluation_item" do
    patch :update, id: @selected_evaluation_item, selected_evaluation_item: { evaluation_item_id: @selected_evaluation_item.evaluation_item_id, importance: @selected_evaluation_item.importance, user_id: @selected_evaluation_item.user_id }
    assert_redirected_to selected_evaluation_item_path(assigns(:selected_evaluation_item))
  end

  test "should destroy selected_evaluation_item" do
    assert_difference('SelectedEvaluationItem.count', -1) do
      delete :destroy, id: @selected_evaluation_item
    end

    assert_redirected_to selected_evaluation_items_path
  end
end
