require 'test_helper'

class PeriodosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periodo" do
    assert_difference('Periodo.count') do
      post :create, :periodo => { }
    end

    assert_redirected_to periodo_path(assigns(:periodo))
  end

  test "should show periodo" do
    get :show, :id => periodos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => periodos(:one).id
    assert_response :success
  end

  test "should update periodo" do
    put :update, :id => periodos(:one).id, :periodo => { }
    assert_redirected_to periodo_path(assigns(:periodo))
  end

  test "should destroy periodo" do
    assert_difference('Periodo.count', -1) do
      delete :destroy, :id => periodos(:one).id
    end

    assert_redirected_to periodos_path
  end
end
