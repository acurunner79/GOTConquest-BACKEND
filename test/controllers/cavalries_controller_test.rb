require "test_helper"

class CavalriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cavalry = cavalries(:one)
  end

  test "should get index" do
    get cavalries_url, as: :json
    assert_response :success
  end

  test "should create cavalry" do
    assert_difference('Cavalry.count') do
      post cavalries_url, params: { cavalry: { cav_attack: @cavalry.cav_attack, cav_attack_vs_player: @cavalry.cav_attack_vs_player, cav_attack_vs_players_cav: @cavalry.cav_attack_vs_players_cav, cav_attack_vs_players_inf: @cavalry.cav_attack_vs_players_inf, cav_attack_vs_players_ranged: @cavalry.cav_attack_vs_players_ranged, cav_attack_vs_players_siege: @cavalry.cav_attack_vs_players_siege, cav_defense: @cavalry.cav_defense, cav_defense_vs_player: @cavalry.cav_defense_vs_player, cav_defense_vs_players_cav: @cavalry.cav_defense_vs_players_cav, cav_defense_vs_players_inf: @cavalry.cav_defense_vs_players_inf, cav_defense_vs_players_ranged: @cavalry.cav_defense_vs_players_ranged, cav_defense_vs_players_siege: @cavalry.cav_defense_vs_players_siege, cav_health: @cavalry.cav_health, cav_health_vs_player: @cavalry.cav_health_vs_player } }, as: :json
    end

    assert_response 201
  end

  test "should show cavalry" do
    get cavalry_url(@cavalry), as: :json
    assert_response :success
  end

  test "should update cavalry" do
    patch cavalry_url(@cavalry), params: { cavalry: { cav_attack: @cavalry.cav_attack, cav_attack_vs_player: @cavalry.cav_attack_vs_player, cav_attack_vs_players_cav: @cavalry.cav_attack_vs_players_cav, cav_attack_vs_players_inf: @cavalry.cav_attack_vs_players_inf, cav_attack_vs_players_ranged: @cavalry.cav_attack_vs_players_ranged, cav_attack_vs_players_siege: @cavalry.cav_attack_vs_players_siege, cav_defense: @cavalry.cav_defense, cav_defense_vs_player: @cavalry.cav_defense_vs_player, cav_defense_vs_players_cav: @cavalry.cav_defense_vs_players_cav, cav_defense_vs_players_inf: @cavalry.cav_defense_vs_players_inf, cav_defense_vs_players_ranged: @cavalry.cav_defense_vs_players_ranged, cav_defense_vs_players_siege: @cavalry.cav_defense_vs_players_siege, cav_health: @cavalry.cav_health, cav_health_vs_player: @cavalry.cav_health_vs_player } }, as: :json
    assert_response 200
  end

  test "should destroy cavalry" do
    assert_difference('Cavalry.count', -1) do
      delete cavalry_url(@cavalry), as: :json
    end

    assert_response 204
  end
end
