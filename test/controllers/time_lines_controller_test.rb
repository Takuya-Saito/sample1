require 'test_helper'

class TimeLinesControllerTest < ActionController::TestCase
  setup do
    @time_line = time_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_line" do
    assert_difference('TimeLine.count') do
      post :create, time_line: { retweet_id: @time_line.retweet_id, tweet_id: @time_line.tweet_id }
    end

    assert_redirected_to time_line_path(assigns(:time_line))
  end

  test "should show time_line" do
    get :show, id: @time_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_line
    assert_response :success
  end

  test "should update time_line" do
    patch :update, id: @time_line, time_line: { retweet_id: @time_line.retweet_id, tweet_id: @time_line.tweet_id }
    assert_redirected_to time_line_path(assigns(:time_line))
  end

  test "should destroy time_line" do
    assert_difference('TimeLine.count', -1) do
      delete :destroy, id: @time_line
    end

    assert_redirected_to time_lines_path
  end
end
