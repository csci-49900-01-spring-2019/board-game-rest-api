require 'test_helper'

class GameSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_session = game_sessions(:one)
  end

  test "should get index" do
    get game_sessions_url, as: :json
    assert_response :success
  end

  test "should create game_session" do
    assert_difference('GameSession.count') do
      post game_sessions_url, params: { game_session: { Game_id: @game_session.Game_id, User_id: @game_session.User_id, num_kills: @game_session.num_kills, total_damage_dealt: @game_session.total_damage_dealt, total_damage_taken: @game_session.total_damage_taken, total_healing: @game_session.total_healing, weapons_collected: @game_session.weapons_collected } }, as: :json
    end

    assert_response 201
  end

  test "should show game_session" do
    get game_session_url(@game_session), as: :json
    assert_response :success
  end

  test "should update game_session" do
    patch game_session_url(@game_session), params: { game_session: { Game_id: @game_session.Game_id, User_id: @game_session.User_id, num_kills: @game_session.num_kills, total_damage_dealt: @game_session.total_damage_dealt, total_damage_taken: @game_session.total_damage_taken, total_healing: @game_session.total_healing, weapons_collected: @game_session.weapons_collected } }, as: :json
    assert_response 200
  end

  test "should destroy game_session" do
    assert_difference('GameSession.count', -1) do
      delete game_session_url(@game_session), as: :json
    end

    assert_response 204
  end
end
