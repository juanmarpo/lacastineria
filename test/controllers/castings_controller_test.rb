require 'test_helper'

class CastingsControllerTest < ActionController::TestCase
  setup do
    @casting = castings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casting" do
    assert_difference('Casting.count') do
      post :create, casting: { casting_end: @casting.casting_end, description: @casting.description, payment_type: @casting.payment_type, title: @casting.title, ubication: @casting.ubication }
    end

    assert_redirected_to casting_path(assigns(:casting))
  end

  test "should show casting" do
    get :show, id: @casting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casting
    assert_response :success
  end

  test "should update casting" do
    patch :update, id: @casting, casting: { casting_end: @casting.casting_end, description: @casting.description, payment_type: @casting.payment_type, title: @casting.title, ubication: @casting.ubication }
    assert_redirected_to casting_path(assigns(:casting))
  end

  test "should destroy casting" do
    assert_difference('Casting.count', -1) do
      delete :destroy, id: @casting
    end

    assert_redirected_to castings_path
  end
end
