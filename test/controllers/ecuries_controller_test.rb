require "test_helper"

class EcuriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecury = ecuries(:one)
  end

  test "should get index" do
    get ecuries_url
    assert_response :success
  end

  test "should get new" do
    get new_ecury_url
    assert_response :success
  end

  test "should create ecury" do
    assert_difference("Ecurie.count") do
      post ecuries_url, params: { ecury: { nom: @ecury.nom, text: @ecury.text } }
    end

    assert_redirected_to ecury_url(Ecurie.last)
  end

  test "should show ecury" do
    get ecury_url(@ecury)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecury_url(@ecury)
    assert_response :success
  end

  test "should update ecury" do
    patch ecury_url(@ecury), params: { ecury: { nom: @ecury.nom, text: @ecury.text } }
    assert_redirected_to ecury_url(@ecury)
  end

  test "should destroy ecury" do
    assert_difference("Ecurie.count", -1) do
      delete ecury_url(@ecury)
    end

    assert_redirected_to ecuries_url
  end
end
