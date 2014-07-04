require 'test_helper'

class PostcardsControllerTest < ActionController::TestCase
  setup do
    @postcard = postcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postcard" do
    assert_difference('Postcard.count') do
      post :create, postcard: { deliver_on: @postcard.deliver_on, image_url: @postcard.image_url, message: @postcard.message, recipient_email: @postcard.recipient_email, recipient_name: @postcard.recipient_name, sender_email: @postcard.sender_email, sender_name: @postcard.sender_name, status: @postcard.status }
    end

    assert_redirected_to postcard_path(assigns(:postcard))
  end

  test "should show postcard" do
    get :show, id: @postcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postcard
    assert_response :success
  end

  test "should update postcard" do
    patch :update, id: @postcard, postcard: { deliver_on: @postcard.deliver_on, image_url: @postcard.image_url, message: @postcard.message, recipient_email: @postcard.recipient_email, recipient_name: @postcard.recipient_name, sender_email: @postcard.sender_email, sender_name: @postcard.sender_name, status: @postcard.status }
    assert_redirected_to postcard_path(assigns(:postcard))
  end

  test "should destroy postcard" do
    assert_difference('Postcard.count', -1) do
      delete :destroy, id: @postcard
    end

    assert_redirected_to postcards_path
  end
end
