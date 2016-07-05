require 'test_helper'

class InterestMemosControllerTest < ActionController::TestCase
  setup do
    @interest_memo = interest_memos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interest_memos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest_memo" do
    assert_difference('InterestMemo.count') do
      post :create, interest_memo: { date: @interest_memo.date, interest_id: @interest_memo.interest_id, memo: @interest_memo.memo }
    end

    assert_redirected_to interest_memo_path(assigns(:interest_memo))
  end

  test "should show interest_memo" do
    get :show, id: @interest_memo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest_memo
    assert_response :success
  end

  test "should update interest_memo" do
    patch :update, id: @interest_memo, interest_memo: { date: @interest_memo.date, interest_id: @interest_memo.interest_id, memo: @interest_memo.memo }
    assert_redirected_to interest_memo_path(assigns(:interest_memo))
  end

  test "should destroy interest_memo" do
    assert_difference('InterestMemo.count', -1) do
      delete :destroy, id: @interest_memo
    end

    assert_redirected_to interest_memos_path
  end
end
