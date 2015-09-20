require 'test_helper'

class BorrowsControllerTest < ActionController::TestCase
  setup do
    @borrow = borrows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrow" do
    assert_difference('Borrow.count') do
      post :create, borrow: { book_id: @borrow.book_id, idate: @borrow.idate, member_id: @borrow.member_id, rdate: @borrow.rdate }
    end

    assert_redirected_to borrow_path(assigns(:borrow))
  end

  test "should show borrow" do
    get :show, id: @borrow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrow
    assert_response :success
  end

  test "should update borrow" do
    patch :update, id: @borrow, borrow: { book_id: @borrow.book_id, idate: @borrow.idate, member_id: @borrow.member_id, rdate: @borrow.rdate }
    assert_redirected_to borrow_path(assigns(:borrow))
  end

  test "should destroy borrow" do
    assert_difference('Borrow.count', -1) do
      delete :destroy, id: @borrow
    end

    assert_redirected_to borrows_path
  end
end
