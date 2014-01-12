require 'test_helper'

class ClientTest < Minitest::Test
  attr_reader :client

  def setup
    @client = Mousecop::Client.new
  end

  def test_client_exists
    assert client
  end

  def test_players_returns_array
    assert_kind_of Array, client.players
  end

  def test_players_return_array_of_players
    client.players.each do |player|
      assert_kind_of Mousecop::Player, player
    end
  end

  def test_sample_player_returns_a_random_player
    player1 = client.sample
    player2 = client.sample
    refute_equal player1.name, player2.name
  end
end
