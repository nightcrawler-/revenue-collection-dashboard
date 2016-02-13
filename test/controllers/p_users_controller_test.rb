require 'test_helper'

class PUsersControllerTest < ActionController::TestCase
  setup do
    @p_user = p_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should show p_user" do
    assert_difference('PUser.count') do
      post :show, p_user: {email: @p_user.email, first_name: @p_user.first_name, id_number: @p_user.id_number, last_name: @p_user.last_name, password: @p_user.password, pic_url: @p_user.pic_url, verified: @p_user.verified }
    end

    assert_redirected_to p_user_path(assigns(:p_user))
  end

  test "should show p_user" do
    get :show, id: @p_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_user
    assert_response :success
  end

  test "should update p_user" do
    patch :update, id: @p_user, p_user: { email: @p_user.email, first_name: @p_user.first_name, id_number: @p_user.id_number, last_name: @p_user.last_name, password: @p_user.password, pic_url: @p_user.pic_url, verified: @p_user.verified }
    assert_redirected_to p_user_path(assigns(:p_user))
  end

  test "should destroy p_user" do
    assert_difference('PUser.count', -1) do
      delete :destroy, id: @p_user
    end

    assert_redirected_to p_users_path
  end
end
