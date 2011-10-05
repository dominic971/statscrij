require 'test_helper'

class UsagersControllerTest < ActionController::TestCase
  setup do
    @usager = usagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usager" do
    assert_difference('Usager.count') do
      post :create, :usager => @usager.attributes
    end

    assert_redirected_to usager_path(assigns(:usager))
  end

  test "should show usager" do
    get :show, :id => @usager.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @usager.to_param
    assert_response :success
  end

  test "should update usager" do
    put :update, :id => @usager.to_param, :usager => @usager.attributes
    assert_redirected_to usager_path(assigns(:usager))
  end

  test "should destroy usager" do
    assert_difference('Usager.count', -1) do
      delete :destroy, :id => @usager.to_param
    end

    assert_redirected_to usagers_path
  end
end
