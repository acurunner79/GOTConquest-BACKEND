require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url, as: :json
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { allegiance: @player.allegiance, armory_power: @player.armory_power, building_power: @player.building_power, dragon_talent_power: @player.dragon_talent_power, house_level: @player.house_level, ingame_name: @player.ingame_name, keep_level: @player.keep_level, power_level: @player.power_level, research_power: @player.research_power, troop_power: @player.troop_power } }, as: :json
    end

    assert_response 201
  end

  test "should show player" do
    get player_url(@player), as: :json
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { allegiance: @player.allegiance, armory_power: @player.armory_power, building_power: @player.building_power, dragon_talent_power: @player.dragon_talent_power, house_level: @player.house_level, ingame_name: @player.ingame_name, keep_level: @player.keep_level, power_level: @player.power_level, research_power: @player.research_power, troop_power: @player.troop_power } }, as: :json
    assert_response 200
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player), as: :json
    end

    assert_response 204
  end
end
