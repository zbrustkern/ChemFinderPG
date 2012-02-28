require 'test_helper'

class FgroupsControllerTest < ActionController::TestCase
  setup do
    @fgroup = fgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fgroup" do
    assert_difference('Fgroup.count') do
      post :create, fgroup: @fgroup.attributes
    end

    assert_redirected_to fgroup_path(assigns(:fgroup))
  end

  test "should show fgroup" do
    get :show, id: @fgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fgroup
    assert_response :success
  end

  test "should update fgroup" do
    put :update, id: @fgroup, fgroup: @fgroup.attributes
    assert_redirected_to fgroup_path(assigns(:fgroup))
  end

  test "should destroy fgroup" do
    assert_difference('Fgroup.count', -1) do
      delete :destroy, id: @fgroup
    end

    assert_redirected_to fgroups_path
  end
end
