require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url, as: :json
    assert_response :success
  end

  test "should create review" do
    assert_difference("Review.count") do
      post reviews_url, params: { review: { castle_id: @review.castle_id, comment: @review.comment, user_id: @review.user_id, username: @review.username } }, as: :json
    end

    assert_response :created
  end

  test "should show review" do
    get review_url(@review), as: :json
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { castle_id: @review.castle_id, comment: @review.comment, user_id: @review.user_id, username: @review.username } }, as: :json
    assert_response :success
  end

  test "should destroy review" do
    assert_difference("Review.count", -1) do
      delete review_url(@review), as: :json
    end

    assert_response :no_content
  end
end
