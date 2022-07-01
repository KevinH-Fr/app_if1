require "test_helper"

class ClassecuriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classecury = classecuries(:one)
  end

  test "should get index" do
    get classecuries_url
    assert_response :success
  end

  test "should get new" do
    get new_classecury_url
    assert_response :success
  end

  test "should create classecury" do
    assert_difference("Classecurie.count") do
      post classecuries_url, params: { classecury: {  } }
    end

    assert_redirected_to classecury_url(Classecurie.last)
  end

  test "should show classecury" do
    get classecury_url(@classecury)
    assert_response :success
  end

  test "should get edit" do
    get edit_classecury_url(@classecury)
    assert_response :success
  end

  test "should update classecury" do
    patch classecury_url(@classecury), params: { classecury: {  } }
    assert_redirected_to classecury_url(@classecury)
  end

  test "should destroy classecury" do
    assert_difference("Classecurie.count", -1) do
      delete classecury_url(@classecury)
    end

    assert_redirected_to classecuries_url
  end
end
