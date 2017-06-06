require 'test_helper'

class BookersControllerTest < ActionController::TestCase
  setup do
    @booker = bookers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booker" do
    assert_difference('Booker.count') do
      post :create, booker: { contact: @booker.contact, email: @booker.email, name: @booker.name, nickname: @booker.nickname }
    end

    assert_redirected_to booker_path(assigns(:booker))
  end

  test "should show booker" do
    get :show, id: @booker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booker
    assert_response :success
  end

  test "should update booker" do
    patch :update, id: @booker, booker: { contact: @booker.contact, email: @booker.email, name: @booker.name, nickname: @booker.nickname }
    assert_redirected_to booker_path(assigns(:booker))
  end

  test "should destroy booker" do
    assert_difference('Booker.count', -1) do
      delete :destroy, id: @booker
    end

    assert_redirected_to bookers_path
  end
end
