class PlayerTest < MiniTest::Test
  def test_player_can_create_with_attributes
    player = Mousecop::Player.create(name: "bob",
			   id: "d41d8cd98f00b204e9800998ecf8427e",
			   image: "http://collegebowl.avatarpro.biz/images/d41d8cd98f00b204e9800998ecf8427e" )
    assert_equal "bob", player.name
    assert_equal "d41d8cd98f00b204e9800998ecf8427e", player.id
    assert_equal "http://collegebowl.avatarpro.biz/images/d41d8cd98f00b204e9800998ecf8427e", player.image
  end
end
