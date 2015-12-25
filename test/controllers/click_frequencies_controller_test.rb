require 'test_helper'

class ClickFrequenciesControllerTest < ActionController::TestCase
  setup do
    @click_frequency = click_frequencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:click_frequencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create click_frequency" do
    assert_difference('ClickFrequency.count') do
      post :create, click_frequency: { click_count: @click_frequency.click_count, user_id: @click_frequency.user_id }
    end

    assert_redirected_to click_frequency_path(assigns(:click_frequency))
  end

  test "should show click_frequency" do
    get :show, id: @click_frequency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @click_frequency
    assert_response :success
  end

  test "should update click_frequency" do
    patch :update, id: @click_frequency, click_frequency: { click_count: @click_frequency.click_count, user_id: @click_frequency.user_id }
    assert_redirected_to click_frequency_path(assigns(:click_frequency))
  end

  test "should destroy click_frequency" do
    assert_difference('ClickFrequency.count', -1) do
      delete :destroy, id: @click_frequency
    end

    assert_redirected_to click_frequencies_path
  end
end
