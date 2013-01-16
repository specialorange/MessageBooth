require 'test_helper'

class PhotoBoothsControllerTest < ActionController::TestCase
  setup do
    @photo_booth = photo_booths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_booths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_booth" do
    assert_difference('PhotoBooth.count') do
      post :create, photo_booth: { datetime: @photo_booth.datetime, integer: @photo_booth.integer, string: @photo_booth.string, string: @photo_booth.string, string: @photo_booth.string }
    end

    assert_redirected_to photo_booth_path(assigns(:photo_booth))
  end

  test "should show photo_booth" do
    get :show, id: @photo_booth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_booth
    assert_response :success
  end

  test "should update photo_booth" do
    put :update, id: @photo_booth, photo_booth: { datetime: @photo_booth.datetime, integer: @photo_booth.integer, string: @photo_booth.string, string: @photo_booth.string, string: @photo_booth.string }
    assert_redirected_to photo_booth_path(assigns(:photo_booth))
  end

  test "should destroy photo_booth" do
    assert_difference('PhotoBooth.count', -1) do
      delete :destroy, id: @photo_booth
    end

    assert_redirected_to photo_booths_path
  end
end
