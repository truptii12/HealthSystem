require 'test_helper'

class MedsControllerTest < ActionController::TestCase
  setup do
    @med = meds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med" do
    assert_difference('Med.count') do
      post :create, med: { cost: @med.cost, firstname: @med.firstname, lastname: @med.lastname }
    end

    assert_redirected_to med_path(assigns(:med))
  end

  test "should show med" do
    get :show, id: @med
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @med
    assert_response :success
  end

  test "should update med" do
    patch :update, id: @med, med: { cost: @med.cost, firstname: @med.firstname, lastname: @med.lastname }
    assert_redirected_to med_path(assigns(:med))
  end

  test "should destroy med" do
    assert_difference('Med.count', -1) do
      delete :destroy, id: @med
    end

    assert_redirected_to meds_path
  end
end
