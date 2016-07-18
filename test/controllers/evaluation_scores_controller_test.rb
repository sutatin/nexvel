require 'test_helper'

class EvaluationScoresControllerTest < ActionController::TestCase
  setup do
    @evaluation_score = evaluation_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_score" do
    assert_difference('EvaluationScore.count') do
      post :create, evaluation_score: { interest_id: @evaluation_score.interest_id, score: @evaluation_score.score, selected_evaluation_item_id: @evaluation_score.selected_evaluation_item_id }
    end

    assert_redirected_to evaluation_score_path(assigns(:evaluation_score))
  end

  test "should show evaluation_score" do
    get :show, id: @evaluation_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_score
    assert_response :success
  end

  test "should update evaluation_score" do
    patch :update, id: @evaluation_score, evaluation_score: { interest_id: @evaluation_score.interest_id, score: @evaluation_score.score, selected_evaluation_item_id: @evaluation_score.selected_evaluation_item_id }
    assert_redirected_to evaluation_score_path(assigns(:evaluation_score))
  end

  test "should destroy evaluation_score" do
    assert_difference('EvaluationScore.count', -1) do
      delete :destroy, id: @evaluation_score
    end

    assert_redirected_to evaluation_scores_path
  end
end
