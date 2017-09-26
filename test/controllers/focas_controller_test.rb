require 'test_helper'

class FocasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foca = focas(:one)
  end

  test "should get index" do
    get focas_url
    assert_response :success
  end

  test "should get new" do
    get new_foca_url
    assert_response :success
  end

  test "should create foca" do
    assert_difference('Foca.count') do
      post focas_url, params: { foca: { altura_cm: @foca.altura_cm, data_nascimento: @foca.data_nascimento, nome: @foca.nome, peso_kg: @foca.peso_kg } }
    end

    assert_redirected_to foca_url(Foca.last)
  end

  test "should show foca" do
    get foca_url(@foca)
    assert_response :success
  end

  test "should get edit" do
    get edit_foca_url(@foca)
    assert_response :success
  end

  test "should update foca" do
    patch foca_url(@foca), params: { foca: { altura_cm: @foca.altura_cm, data_nascimento: @foca.data_nascimento, nome: @foca.nome, peso_kg: @foca.peso_kg } }
    assert_redirected_to foca_url(@foca)
  end

  test "should destroy foca" do
    assert_difference('Foca.count', -1) do
      delete foca_url(@foca)
    end

    assert_redirected_to focas_url
  end
end
