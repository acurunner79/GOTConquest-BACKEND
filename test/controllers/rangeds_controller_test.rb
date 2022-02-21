require "test_helper"

class RangedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranged = rangeds(:one)
  end

  test "should get index" do
    get rangeds_url, as: :json
    assert_response :success
  end

  test "should create ranged" do
    assert_difference('Ranged.count') do
      post rangeds_url, params: { ranged: { ranged_attack: @ranged.ranged_attack, ranged_attack_vs_player: @ranged.ranged_attack_vs_player, ranged_attack_vs_players_cav: @ranged.ranged_attack_vs_players_cav, ranged_attack_vs_players_inf: @ranged.ranged_attack_vs_players_inf, ranged_attack_vs_players_ranged: @ranged.ranged_attack_vs_players_ranged, ranged_attack_vs_players_siege: @ranged.ranged_attack_vs_players_siege, ranged_defense: @ranged.ranged_defense, ranged_defense_vs_player: @ranged.ranged_defense_vs_player, ranged_defense_vs_players_cav: @ranged.ranged_defense_vs_players_cav, ranged_defense_vs_players_inf: @ranged.ranged_defense_vs_players_inf, ranged_defense_vs_players_ranged: @ranged.ranged_defense_vs_players_ranged, ranged_defense_vs_players_siege: @ranged.ranged_defense_vs_players_siege, ranged_health: @ranged.ranged_health, ranged_health_vs_player: @ranged.ranged_health_vs_player } }, as: :json
    end

    assert_response 201
  end

  test "should show ranged" do
    get ranged_url(@ranged), as: :json
    assert_response :success
  end

  test "should update ranged" do
    patch ranged_url(@ranged), params: { ranged: { ranged_attack: @ranged.ranged_attack, ranged_attack_vs_player: @ranged.ranged_attack_vs_player, ranged_attack_vs_players_cav: @ranged.ranged_attack_vs_players_cav, ranged_attack_vs_players_inf: @ranged.ranged_attack_vs_players_inf, ranged_attack_vs_players_ranged: @ranged.ranged_attack_vs_players_ranged, ranged_attack_vs_players_siege: @ranged.ranged_attack_vs_players_siege, ranged_defense: @ranged.ranged_defense, ranged_defense_vs_player: @ranged.ranged_defense_vs_player, ranged_defense_vs_players_cav: @ranged.ranged_defense_vs_players_cav, ranged_defense_vs_players_inf: @ranged.ranged_defense_vs_players_inf, ranged_defense_vs_players_ranged: @ranged.ranged_defense_vs_players_ranged, ranged_defense_vs_players_siege: @ranged.ranged_defense_vs_players_siege, ranged_health: @ranged.ranged_health, ranged_health_vs_player: @ranged.ranged_health_vs_player } }, as: :json
    assert_response 200
  end

  test "should destroy ranged" do
    assert_difference('Ranged.count', -1) do
      delete ranged_url(@ranged), as: :json
    end

    assert_response 204
  end
end
