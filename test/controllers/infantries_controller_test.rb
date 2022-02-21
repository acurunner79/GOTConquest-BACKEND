require "test_helper"

class InfantriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infantry = infantries(:one)
  end

  test "should get index" do
    get infantries_url, as: :json
    assert_response :success
  end

  test "should create infantry" do
    assert_difference('Infantry.count') do
      post infantries_url, params: { infantry: { inf_attack: @infantry.inf_attack, inf_attack_vs_player: @infantry.inf_attack_vs_player, inf_attack_vs_players_cav: @infantry.inf_attack_vs_players_cav, inf_attack_vs_players_inf: @infantry.inf_attack_vs_players_inf, inf_attack_vs_players_range: @infantry.inf_attack_vs_players_range, inf_defense: @infantry.inf_defense, inf_defense_vs_player: @infantry.inf_defense_vs_player, inf_defense_vs_players_cav: @infantry.inf_defense_vs_players_cav, inf_defense_vs_players_inf: @infantry.inf_defense_vs_players_inf, inf_defense_vs_players_range: @infantry.inf_defense_vs_players_range, inf_defense_vs_players_siege: @infantry.inf_defense_vs_players_siege, inf_health: @infantry.inf_health, inf_health_vs_player: @infantry.inf_health_vs_player } }, as: :json
    end

    assert_response 201
  end

  test "should show infantry" do
    get infantry_url(@infantry), as: :json
    assert_response :success
  end

  test "should update infantry" do
    patch infantry_url(@infantry), params: { infantry: { inf_attack: @infantry.inf_attack, inf_attack_vs_player: @infantry.inf_attack_vs_player, inf_attack_vs_players_cav: @infantry.inf_attack_vs_players_cav, inf_attack_vs_players_inf: @infantry.inf_attack_vs_players_inf, inf_attack_vs_players_range: @infantry.inf_attack_vs_players_range, inf_defense: @infantry.inf_defense, inf_defense_vs_player: @infantry.inf_defense_vs_player, inf_defense_vs_players_cav: @infantry.inf_defense_vs_players_cav, inf_defense_vs_players_inf: @infantry.inf_defense_vs_players_inf, inf_defense_vs_players_range: @infantry.inf_defense_vs_players_range, inf_defense_vs_players_siege: @infantry.inf_defense_vs_players_siege, inf_health: @infantry.inf_health, inf_health_vs_player: @infantry.inf_health_vs_player } }, as: :json
    assert_response 200
  end

  test "should destroy infantry" do
    assert_difference('Infantry.count', -1) do
      delete infantry_url(@infantry), as: :json
    end

    assert_response 204
  end
end
