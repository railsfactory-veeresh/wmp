require 'test_helper'

class QualitiesControllerTest < ActionController::TestCase
  setup do
    @quality = qualities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quality" do
    assert_difference('Quality.count') do
      post :create, quality: { boisterous: @quality.boisterous, conisiderate: @quality.conisiderate, demonstrative: @quality.demonstrative, emotional: @quality.emotional, forward_looking: @quality.forward_looking, grounded: @quality.grounded, indecisive: @quality.indecisive, inscrutable: @quality.inscrutable, intense: @quality.intense, mercurial: @quality.mercurial, relaxed: @quality.relaxed, strong: @quality.strong, unaffected: @quality.unaffected, user_id: @quality.user_id, wise: @quality.wise, wity: @quality.wity }
    end

    assert_redirected_to quality_path(assigns(:quality))
  end

  test "should show quality" do
    get :show, id: @quality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quality
    assert_response :success
  end

  test "should update quality" do
    patch :update, id: @quality, quality: { boisterous: @quality.boisterous, conisiderate: @quality.conisiderate, demonstrative: @quality.demonstrative, emotional: @quality.emotional, forward_looking: @quality.forward_looking, grounded: @quality.grounded, indecisive: @quality.indecisive, inscrutable: @quality.inscrutable, intense: @quality.intense, mercurial: @quality.mercurial, relaxed: @quality.relaxed, strong: @quality.strong, unaffected: @quality.unaffected, user_id: @quality.user_id, wise: @quality.wise, wity: @quality.wity }
    assert_redirected_to quality_path(assigns(:quality))
  end

  test "should destroy quality" do
    assert_difference('Quality.count', -1) do
      delete :destroy, id: @quality
    end

    assert_redirected_to qualities_path
  end
end
