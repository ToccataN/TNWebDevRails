require 'test_helper'

<<<<<<< HEAD
class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
=======
class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get links" do
    get :links
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get media" do
    get :media
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

>>>>>>> 298a96f0d267def2f54e511cba512c9b7ece3eaa
end
