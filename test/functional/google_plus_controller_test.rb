require 'test_helper'

class GooglePlusControllerTest < ActionController::TestCase
  setup do
    @google_plu = google_plus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:google_plus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create google_plu" do
    assert_difference('GooglePlu.count') do
      post :create, google_plu: {  }
    end

    assert_redirected_to google_plu_path(assigns(:google_plu))
  end

  test "should show google_plu" do
    get :show, id: @google_plu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @google_plu
    assert_response :success
  end

  test "should update google_plu" do
    put :update, id: @google_plu, google_plu: {  }
    assert_redirected_to google_plu_path(assigns(:google_plu))
  end

  test "should destroy google_plu" do
    assert_difference('GooglePlu.count', -1) do
      delete :destroy, id: @google_plu
    end

    assert_redirected_to google_plus_path
  end
end
