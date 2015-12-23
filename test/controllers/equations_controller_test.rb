require 'test_helper'

class EquationsControllerTest < ActionController::TestCase
  setup do
    @equation = equations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equation" do
    assert_difference('Equation.count') do
      post :create, equation: { figure: @equation.figure, title: @equation.title }
    end

    assert_redirected_to equation_path(assigns(:equation))
  end

  test "should show equation" do
    get :show, id: @equation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equation
    assert_response :success
  end

  test "should update equation" do
    patch :update, id: @equation, equation: { figure: @equation.figure, title: @equation.title }
    assert_redirected_to equation_path(assigns(:equation))
  end

  test "should destroy equation" do
    assert_difference('Equation.count', -1) do
      delete :destroy, id: @equation
    end

    assert_redirected_to equations_path
  end
end
