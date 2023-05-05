require "test_helper"

class AritclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aritcle = aritcles(:one)
  end

  test "should get index" do
    get aritcles_url
    assert_response :success
  end

  test "should get new" do
    get new_aritcle_url
    assert_response :success
  end

  test "should create aritcle" do
    assert_difference("Aritcle.count") do
      post aritcles_url, params: { aritcle: { description: @aritcle.description, title: @aritcle.title } }
    end

    assert_redirected_to aritcle_url(Aritcle.last)
  end

  test "should show aritcle" do
    get aritcle_url(@aritcle)
    assert_response :success
  end

  test "should get edit" do
    get edit_aritcle_url(@aritcle)
    assert_response :success
  end

  test "should update aritcle" do
    patch aritcle_url(@aritcle), params: { aritcle: { description: @aritcle.description, title: @aritcle.title } }
    assert_redirected_to aritcle_url(@aritcle)
  end

  test "should destroy aritcle" do
    assert_difference("Aritcle.count", -1) do
      delete aritcle_url(@aritcle)
    end

    assert_redirected_to aritcles_url
  end
end
