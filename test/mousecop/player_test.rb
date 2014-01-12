require 'test_helper'

class PlayerTest < MiniTest::Test

  def test_player_all_returns_all_players
    Mousecop::Player.all.each do |player|
      assert_kind_of Mousecop::Player, player
    end
  end

  def test_player_can_create_with_attributes
    player = Mousecop::Player.create(name: "bob",
			   id: "d41d8cd98f00b204e9800998ecf8427e",
			   image: "http://collegebowl.avatarpro.biz/images/d41d8cd98f00b204e9800998ecf8427e" )
    assert_equal "bob", player.name
    assert_equal "d41d8cd98f00b204e9800998ecf8427e", player.id
    assert_equal "http://collegebowl.avatarpro.biz/images/d41d8cd98f00b204e9800998ecf8427e", player.image
  end

  def test_sample_returns_random_player
    player1 = Mousecop::Player.sample
    player2 = Mousecop::Player.sample
    refute_equal player1.name, player2.name
  end

  def test_return_players_first
    assert_kind_of Mousecop::Player, Mousecop::Player.first
  end
end
