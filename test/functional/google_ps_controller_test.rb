require 'test_helper'

class GooglePsControllerTest < ActionController::TestCase
  setup do
    @google_p = google_ps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:google_ps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create google_p" do
    assert_difference('GoogleP.count') do
      post :create, google_p: {  }
    end

    assert_redirected_to google_p_path(assigns(:google_p))
  end

  test "should show google_p" do
    get :show, id: @google_p
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @google_p
    assert_response :success
  end

  test "should update google_p" do
    put :update, id: @google_p, google_p: {  }
    assert_redirected_to google_p_path(assigns(:google_p))
  end

  test "should destroy google_p" do
    assert_difference('GoogleP.count', -1) do
      delete :destroy, id: @google_p
    end

    assert_redirected_to google_ps_path
  end
end
